#!/bin/sh
# authenticode-sign.sh - Wrapper for osslsigncode
# Copyright (C) 2024 g10 Code GmbH
#
# This file is free software; as a special exception the author gives
# unlimited permission to copy and/or distribute it, with or without
# modifications, as long as this notice is preserved.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY, to the extent permitted by law; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

VERSION=2024-03-25
PGM=authenticode-sign.sh

set -e

usage()
{
    cat <<EOF
Usage: $PGM [OPTIONS]  [FILE_TO_SIGN]
Options:
        [--desc=STRING]   Include STRING as description (default=$url)
        [--url=STRING]    Include STRING as URL (default=$desc)
        [--stamp]         Use a stamp file to avoid double signing
        [--dry-run]       Do not actually run osslsigncode
        [--template]      Print a template for ~/.gnupg-autogenrc
        [--version]       Print version and exit
EOF
    exit $1
}


# The information required to sign the tarballs and binaries
# are expected in the developer specific file ~/.gnupg-autogen.rc".
# Here is an example:
print_autogenrc_template()
{
cat <<EOF
# Location of the released tarball archives.  Note that this is an
# internal archive and before uploading this to the public server,
# manual tests should be run and the git release tagged and pushed.
# This is greped by the Makefile.
RELEASE_ARCHIVE=foo@somehost:tarball-archive

# The key used to sign the GnuPG sources.
# This is greped by the Makefile.
RELEASE_SIGNKEY=6DAA6E64A76D2840571B4902528897B826403ADA

# The key used to sign the VERSION files of some MSI installers.
VERSION_SIGNKEY=02F38DFF731FF97CB039A1DA549E695E905BA208

# For signing Windows binaries we need to employ a Windows machine.
# We connect to this machine via ssh and take the connection
# parameters via .ssh/config. For example a VM could be specified
# like this:
#
#   Host authenticode-signhost
#        HostName localhost
#        Port 27042
#        User gpgsign
#
# Depending on the used token it might be necessary to allow single
# signon and unlock the token before running the make.  The following
# variable references this entry.  This is greped by the Makefile.
# To enable this use authenticode-signhost as value.
AUTHENTICODE_SIGNHOST=

# The name of the signtool as used on Windows.
# This is greped by the Makefile.
AUTHENTICODE_TOOL="C:\Program Files (x86)\Windows Kits\10\bin\signtool.exe"

# The URL for the timestamping service
AUTHENTICODE_TSURL=http://rfc3161timestamp.globalsign.com/advanced

# To use osslsigncode the follwing entries are required and
# an empty string must be given for AUTHENTICODE_SIGNHOST.
# They are greped by the Makefile.  For example:
#AUTHENTICODE_KEY=/home/foo/.gnupg/my-authenticode-key.p12
#AUTHENTICODE_CERTS=/home/foo/.gnupg/my-authenticode-certs.pem

# If a smartcard is used for the Authenticode signature these
# entries are required instead (remove comment).
#AUTHENTICODE_KEY=card
AUTHENTICODE_CERTS=/home/foo/.gnupg/my_authenticode_cert.pem
OSSLSIGNCODE=/usr/bin/osslsigncode
OSSLPKCS11ENGINE=/usr/lib/x86_64-linux-gnu/engines-1.1/pkcs11.so
SCUTEMODULE=/usr/local/lib/scute.so

# Signing can also be disabled:
AUTHENTICODE_KEY=none

#
EOF
}

# gpg-authcode-sign.sh is distributed with gnupg 2.6 and basically the
# same as this script.
echo >&2 "$PGM: Note: Please consider to use gpg-authcode-sign.sh in the future"


autogenrc="$HOME/.gnupg-autogen.rc"
dryrun=
stamp=
buildtype=
# Set defaults  accrding to our build system.
if [ -n "$abs_top_srcdir" -a -f "$abs_top_srcdir/packages/BUILDTYPE" ]; then
    buildtype=$(cat "$abs_top_srcdir/packages/BUILDTYPE")
elif [ -f "../packages/BUILDTYPE" ]; then
    buildtype=$(cat "../packages/BUILDTYPE")
elif [ -f "packages/BUILDTYPE" ]; then
    buildtype=$(cat "packages/BUILDTYPE")
fi
case "$buildtype" in
    vsd)
      desc="GnuPG VS-Desktop"
      url="https://gnupg.com"
      ;;
    gpd)
      desc="GnuPG Desktop"
      url="https://gnupg.com"
      ;;
    default|gpg4win)
      desc="Gpg4win"
      url="https://gpg4win.org"
      ;;
    *)
      desc=
      url=
      ;;
esac

while [ $# -gt 0 ]; do
    case "$1" in
	--*=*)
	    optarg=`echo "$1" | sed 's/[-_a-zA-Z0-9]*=//'`
	    ;;
	*)
	    optarg=""
	    ;;
    esac

    case $1 in
	--desc=*)
	    desc="$optarg"
	    ;;
	--url=*)
	    url="$optarg"
	    ;;
	--dry-run|-n)
	    dryrun=yes
	    ;;
	--stamp)
	    stamp=yes
	    ;;
	--help|-h)
	    usage 0
	    ;;
        --version)
            echo $VERSION
            exit 0
            ;;
        --template)
            print_autogenrc_template
            exit 0
            ;;
	--*)
	    usage 1 1>&2
	    ;;
	*)
	    break
	    ;;
    esac
    shift
done

if [ $# -ne 2 ]; then
    usage 1 1>&2
fi
inname="$1"
outname="$2"
shift

if [ ! -f $autogenrc ]; then
    echo >&2 "$PGM: error: '$autogenrc' missing"
    echo >&2 "$PGM: hint: use option --template"
    exit 1
fi


for v in AUTHENTICODE_SIGNHOST AUTHENTICODE_TOOL AUTHENTICODE_TSURL \
         AUTHENTICODE_KEY AUTHENTICODE_CERTS VERSION_SIGNKEY \
         OSSLSIGNCODE OSSLPKCS11ENGINE SCUTEMODULE ; do
    eval $v=$(grep '^[[:blank:]]*'$v'[[:blank:]]*=' "$autogenrc"|cut -d= -f2\
                  |sed -e 's,\\,\\\\,g'| sed -e 's,^",'\', -e 's,"$,'\',)
done


if [ "$stamp" = yes ]; then
    if [ "$outname.asig-done" -nt "$outname" ]; then
        echo >&2 "$PGM: file is '$outname' is already signed"
        exit 0
    fi
fi


if [ -n "$AUTHENTICODE_SIGNHOST" ]; then

    echo >&2 "$PGM: Signing via host $AUTHENTICODE_SIGNHOST"

    scp "$inname" "$AUTHENTICODE_SIGNHOST:a.exe"
    # Invoke command on Windows via ssh
    ssh "$AUTHENTICODE_SIGNHOST" \""$AUTHENTICODE_TOOL"\" sign \
        /v /sm \
        /a /n '"g10 Code GmbH"' \
        /tr \""$AUTHENTICODE_TSURL"\" /td sha256 \
        /d \""$desc"\" \
        /fd sha256 /du https://gnupg.com a.exe
     scp "$AUTHENTICODE_SIGNHOST:a.exe" "$outname"

elif [ "$AUTHENTICODE_KEY" = card ]; then

    echo >&2 "$PGM: Signing using a card: '$inname'"

    "$OSSLSIGNCODE" sign \
       -pkcs11engine "$OSSLPKCS11ENGINE" \
       -pkcs11module "$SCUTEMODULE" \
       -certs "$AUTHENTICODE_CERTS" \
       -h sha256 -n "$desc" -i "$url" \
       -ts "$AUTHENTICODE_TSURL" \
       -in "$inname" -out "$outname.tmp"
    cp "$outname.tmp" "$outname"
    rm "$outname.tmp"

elif [ "$AUTHENTICODE_KEY" = none ]; then

    echo >&2 "$PGM: Signing disabled; would sign: '$inname'"
    [ "$inname" != "$outname" ] && cp "$inname" "$outname"

else

    echo >&2 "$PGM: Signing using key $AUTHENTICODE_KEY"
    osslsigncode sign -certs "$AUTHENTICODE_CERTS" \
       -pkcs12 "$AUTHENTICODE_KEY" -askpass \
       -ts "$AUTHENTICODE_TSURL" \
       -h sha256 -n "$desc" -i "$url" \
       -in "$inname" -out "$outname.tmp"
       cp "$outname.tmp" "$outname"
       rm "$outname.tmp"

fi
[ "$stamp" = yes ] && touch "$outname.asig-done"
echo >&2 "$PGM: signed file is '$outname'"
