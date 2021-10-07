#!/bin/bash
# Copyright (C) 2021 g10 Code GmbH
#
# Software engineering by Ingo Klöcker <dev@ingo-kloecker.de>
#
# This file is part of GPG4Win.
#
# GPG4Win is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# GPG4Win is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, see <https://www.gnu.org/licenses/>.
#
# SPDX-License-Identifier: GPL-2.0+

# Packages the current HEAD of a git repository as tarball and generates
# a text block that can be copy and pasted into packages.current.

set -e

if [ -z "$1" ]; then
    echo "Usage $0 package > snippet"
    exit 1
fi

package=$1

case ${package} in
    */*)
        repo=${package}
        package=$(basename ${package})
        ;;
    kleopatra)
        repo=https://invent.kde.org/pim/kleopatra.git
        ;;
    *)
        echo "Unsupported package '${package}'"
        exit 1
        ;;
esac

tmpdir=$(mktemp -d -t gen-tarball.XXXXXXXXXX)
curdate=$(date +%Y-%m-%d)
timestamp=$(date +%Y%m%d%H%M)
snapshotdir=${package}-${timestamp}
tarball=${snapshotdir}.tar.xz

git clone ${repo} ${tmpdir}/${snapshotdir}
(cd ${tmpdir} && tar -cJ --exclude-vcs ${snapshotdir}) > ${tarball}

checksum=$(sha256sum ${tarball} | cut -d ' ' -f 1)

echo "------------------------------ >8 ------------------------------"
echo "# ${package}"
echo "# last changed: ${curdate}"
echo "# by: ik"
echo "# verified: Tarball created by ik."
echo "file ${package}/${tarball}"
echo "chk ${checksum}"
echo "------------------------------ >8 ------------------------------"

rm -r ${tmpdir}
