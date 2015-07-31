const char * const light_files[] =
{
  "dirmngr-client.exe",
  "dirmngr.exe",
  "dirmngr_ldap.exe",
  "etc/fonts/fonts.conf",
  "etc/gtk-2.0/im-multipress.conf",
  "etc/pango/pango.modules",
  "freetype6.dll",
  "gdbus.exe",
  "gdk-pixbuf-pixdata.exe",
  "gdk-pixbuf-query-loaders.exe",
  "gio-querymodules.exe",
  "glib-compile-resources.exe",
  "glib-compile-schemas.exe",
  "glib-genmarshal.exe",
  "gobject-query.exe",
  "gpa.exe",
  "gpg-agent.exe",
  "gpg-connect-agent.exe",
  "gpg-error.exe",
  "gpg-preset-passphrase.exe",
  "gpg-protect-tool.exe",
  "gpg2.exe",
  "gpg2keys_curl.exe",
  "gpg2keys_finger.exe",
  "gpg2keys_hkp.exe",
  "gpg2keys_kdns.exe",
  "gpg2keys_ldap.exe",
  "gpgconf.exe",
  "gpgme-w32spawn.exe",
  "gpgsm.exe",
  "gpgtar.exe",
  "gpgv2.exe",
  "gresource.exe",
  "gsettings.exe",
  "gspawn-win32-helper-console.exe",
  "gspawn-win32-helper.exe",
  "gtk-query-immodules-2.0.exe",
  "gtk-update-icon-cache.exe",
  "gtk-update-icon-cache.exe.manifest",
  "intl.dll",
  "lib/gtk-2.0/2.10.0/engines/libpixmap.dll",
  "lib/gtk-2.0/2.10.0/engines/libwimp.dll",
  "lib/gtk-2.0/2.10.0/immodules/im-am-et.dll",
  "lib/gtk-2.0/2.10.0/immodules/im-cedilla.dll",
  "lib/gtk-2.0/2.10.0/immodules/im-cyrillic-translit.dll",
  "lib/gtk-2.0/2.10.0/immodules/im-ime.dll",
  "lib/gtk-2.0/2.10.0/immodules/im-inuktitut.dll",
  "lib/gtk-2.0/2.10.0/immodules/im-ipa.dll",
  "lib/gtk-2.0/2.10.0/immodules/im-multipress.dll",
  "lib/gtk-2.0/2.10.0/immodules/im-thai.dll",
  "lib/gtk-2.0/2.10.0/immodules/im-ti-er.dll",
  "lib/gtk-2.0/2.10.0/immodules/im-ti-et.dll",
  "lib/gtk-2.0/2.10.0/immodules/im-viqr.dll",
  "lib/gtk-2.0/modules/libgail.dll",
  "libadns-1.dll",
  "libassuan-0.dll",
  "libatk-1.0-0.dll",
  "libcairo-2.dll",
  "libcairo-gobject-2.dll",
  "libcairo-script-interpreter-2.dll",
  "libcurl-4.dll",
  "libexpat-1.dll",
  "libffi-6.dll",
  "libfontconfig-1.dll",
  "libgailutil-18.dll",
  "libgcrypt-20.dll",
  "libgdk-win32-2.0-0.dll",
  "libgdk_pixbuf-2.0-0.dll",
  "libgio-2.0-0.dll",
  "libglib-2.0-0.dll",
  "libgmodule-2.0-0.dll",
  "libgnutls-26.dll",
  "libgnutls-extra-26.dll",
  "libgnutls-openssl-27.dll",
  "libgobject-2.0-0.dll",
  "libgpg-error-0.dll",
  "libgpgme-11.dll",
  "libgpgme-glib-11.dll",
  "libgsasl-7.dll",
  "libgthread-2.0-0.dll",
  "libgtk-win32-2.0-0.dll",
  "libiconv-2.dll",
  "libintl-8.dll",
  "libksba-8.dll",
  "libpango-1.0-0.dll",
  "libpangocairo-1.0-0.dll",
  "libpangoft2-1.0-0.dll",
  "libpangowin32-1.0-0.dll",
  "libpng14-14.dll",
  "libtasn1-3.dll",
  "libw32pth-0.dll",
  "md5sum.exe",
  "pango-querymodules.exe",
  "paperkey.exe",
  "pinentry-gtk-2.exe",
  "pinentry-w32.exe",
  "pub/gpa.exe",
  "pub/gpg-connect-agent.exe",
  "pub/gpg.exe",
  "pub/gpg2.exe",
  "pub/gpgconf.exe",
  "pub/gpgsm.exe",
  "pub/gpgv.exe",
  "pub/libgcc_s_sjlj-1.dll",
  "pub/libstdc++-6.dll",
  "scdaemon.exe",
  "scute.dll",
  "sha1sum.exe",
  "sha256sum.exe",
  "share/glib-2.0/schemas/gschema.dtd",
  "share/gnupg/gpg-agent.man",
  "share/gnupg/gpg-conf.skel",
  "share/gnupg/gpg-connect-agent.man",
  "share/gnupg/gpg2.man",
  "share/gnupg/gpgconf.man",
  "share/gnupg/gpgsm.man",
  "share/gnupg/gpgv2.man",
  "share/gnupg/help.*.txt",
  "share/gnupg/paperkey.man",
  "share/gnupg/qualified.txt",
  "share/gnupg/scdaemon.man",
  "share/gpa/gpa-logo.ppm",
  "share/gpa/gpa.png",
  "share/gpg4win/HOWTO-SMIME.*.txt",
  "share/gpg4win/README.*.txt",
  "share/gpg4win/versioninfo.txt",
  "share/locale/*/LC_MESSAGES/atk10.mo",
  "share/locale/*/LC_MESSAGES/glib20.mo",
  "share/locale/*/LC_MESSAGES/gpa.mo",
  "share/locale/*/LC_MESSAGES/gtk20-properties.mo",
  "share/locale/*/LC_MESSAGES/gtk20.mo",
  "share/locale/*/LC_MESSAGES/gnupg2.mo",
  "share/locale/*/LC_MESSAGES/claws-mail.mo",
  "share/locale/*/LC_MESSAGES/gnupg2.mo",
  "share/locale/*/LC_MESSAGES/libgpg-error.mo",
  "share/themes/Default/gtk-2.0-key/gtkrc",
  "share/themes/Emacs/gtk-2.0-key/gtkrc",
  "share/themes/MS-Windows/gtk-2.0/gtkrc",
  "share/themes/Raleigh/gtk-2.0/gtkrc",
  "VERSION",
  "zlib1.dll",
  NULL
};
