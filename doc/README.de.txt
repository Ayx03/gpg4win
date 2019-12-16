;; README.de.txt                             -*- coding: latin-1; -*-
;; This is the README installed with Gpg4win (German version).  Lines
;; with a ; in the first column are considered a comment and not
;; included in the actually installed version.  Certain keywords are
;; replaced by the Makefile; those words are enclosed by exclamation
;; marks.

                  Deutsche README Datei f�r Gpg4win
                  =================================

Dies ist Gpg4win, Version !VERSION! (!BUILD_ISODATE!).

Inhalt:

     1. Wichtige Hinweise
     2. �nderungen
     3. Anmerkungen
     4. Versionsgeschichte
     5. Versionsnummern der einzelnen Programmteile
     6. Rechtliche Hinweise


1. Wichtige Hinweise
====================

Hilfe bei der Installation und Benutzung von Gpg4win bietet Ihnen das
Gpg4win-Kompendium. Sie finden es nach der Installation
auf Ihrem System (wo genau, ist abh�ngig von Ihrer Windows-Version)
oder online auf
    https://www.gpg4win.de/documentation-de.html

Bitte lesen Sie den Abschnitt "3. Anmerkungen" dieses READMEs,
bevor Sie Gpg4win nutzen.

Im Kompendium finden Sie weitere Hinweise zur manuellen oder automatischen
Installation.


Systemvoraussetzungen
---------------------

Gpg4win l�uft auf Windows Versionen 7 oder neuer (bis Windows 10).
32- und 64bit-Systeme werden unterst�tzt. Wird mindestens Windows XP verwendet,
k�nnen einige Komponenten von Gpg4win verwendet werden, sie sind allerdings
nicht offiziell unterst�tzt.

Das Outlook-Plugin GpgOL ist kompatibel mit Microsoft Outlook 2010, 2013 und
2016 (sowohl 32 als auch 64bit) und unterst�tzt E-Mail Transport per SMTP/IMAP
und MS Exchange Server (ab Version 2010).

Mit Gpg4win Version 3.1.2 wurde die Unterst�tzung f�r Outlook 2003 und 2007
aus sicherheitsgr�nden entfernt.

(Aktuellste Angaben auf https://www.gpg4win.de/system-requirements-de.html .)



2. �nderungen
=============

Die integrierten Gpg4win-Komponenten in Version !VERSION! sind:

!COMPONENTS!


Neu in Gpg4win Version !VERSION! (!BUILD_ISODATE!)
-----------------------------------------

- GpgOL: Verbesserte Kompatibilit�t mit anderen Klienten
  f�r S/MIME Mails. Zum Beispiel mit dem Outlook Web
  Interface. (T4543 T4525)

- GpgOL: Mails die zu gro� sind um auf einem Server, mit Limits
  f�r die Mail-Gr��e, verarbeitet werden zu k�nnen, werden
  nun mit einer eigenen Fehlermeldung behandelt. (T4731)

- GpgOL / Kleopatra: Die GnuPG-System Konfiguration kann nun
  versteckt werden.

- GpgOL: Es gibt nun eine weitere Konfigurationsoption um
  den Dialog zur Zertifikats-Best�tigung auch bei voller
  Automatisierung anzuzeigen.

- GpgOL: Mails werden nun nicht immer als HTML klassifiziert.

- GpgOL: Es funktioniert nun auch Mails als Dateien abzuspeichern
  wenn diese in einem eigenen Fenster ge�ffnet sind.

- GpgOL: Ein seltener Absturz wurde behoben der beim �ffnen
  von Mails aus dem Dateisystem passieren konnte.

- GpgOL: Der Dialog zur Zertifikats-Best�tigung hat nun
  Info Kn�pfe um Details anzuzeigen.

- Kleopatra: Der Dialog zum beglaubigen von Benutzerkennungen
  wurde �berarbeitet um die Benutzerfreundlichkeit zu verbessern.
  (T4649)

- Kleopatra: Neues Feature "Tags": Beim beglaubigen einer
  Benutzerkennung kann man nun zus�tzliche Tags angeben.
  Diese Tags k�nnen verwendet werden um Schl�ssel zu
  gruppieren oder danach zu suchen. Es werden alle Tags
  angezeigt die von Schl�sseln mit vollem Beglaubigungs-Vertrauen
  angelegt wurden. (T4734)

- Kleopatra: Es erscheint nun eine Fehlermeldung wenn bei der
  Datei-Verschl�sselung ein Schl�ssel nicht gefunden werden
  konnte.

- Kleopatra: Die Smartcard-Verwaltung unterst�tzt nun
  auch OpenPGP 3 Karten. Zum Beispiel neuere Yubikeys.

- GnuPG: Netzwerk-Operationen sind nun deutlich
  schneller wenn IPv6 nicht verf�gbar ist. (T4165)

- GnuPG: Vorbereitung auf "chosen-prefix" SHA-1 Kollisionen in
  Schl�ssel-Signaturen (Beglaubigungen).
  Diese �nderung ignoriert alle SHA-1 basierten Beglaubigungen,
  welche nach dem 19.1.2019 erstellt wurden.
  Dies betrifft alle DSA-1024 Schl�ssel.
  Die neue Option --allow-weak-key-signatures kann verwendet
  werden um das alte, unsicherere, verhalten wiederherzustellen.
  (T4755, CVE-2019-14855)

- GnuPG: Auf Version 2.2.19 aktualisiert.
  (Siehe: https://gnupg.org f�r weitere Neuigkeiten.)


==============

- GpgOL

  * Crypto E-Mails, die als Anhang weitergeleitet wurden,
    werden nicht verarbeitet.

  * Integrierte Microsoft spezifische OLE Objekte sind nicht
    unterst�tzt.

  * Als weitere Sprachen sind nur Englisch, Niederl�ndisch
    und Portugiesisch verf�gbar.

- Allgemein

  * F�r Version 3.2 planen wir mit GpgOL, optional, in einen st�rker
    automatisierten Modus zu wechseln. Dies w�rde die GnuPG-Option
    setzen:

        trust-model tofu+pgp

    Da das neue Vertrauensmodell noch nicht vollst�ndig in Kleopatra behandelt
    wird (insbesondere bez�glich Dateisignaturen), ist diese Option
    nicht voreingestellt.

    Sie k�nnen sie jedoch manuell in der gpg.conf setzen. Das neue
    Vertrauensmodell wird von GpgOL bereits unterst�tzt.


4. Versionsgeschichte
=====================

Eine aktuelle, deutschsprachige �bersicht der �nderungen finden Sie online
unter: https://www.gpg4win.de/change-history-de.html
Im Weiteren finden Sie die Eintr�ge aus der englischen NEWS-Datei:

!NEWSFILE!


5. Versionsnummern der einzelnen Programmteile
==============================================

Zur �bersicht sind hier die Pr�fsummen, sowie die Namen der einzelnen
Bestandteile, aufgelistet.

!VERSIONINFO!


6. Rechtliche Hinweise zu den einzelnen Bestandteilen der Software
==================================================================

Gpg4win besteht aus einer ganzen Reihe von unabh�ngig entwickelten
Paketen, die teilweise unterschiedliche Lizenzen haben. Der Gro�teil
dieser Software ist, wie Gpg4win selbst, kompatibel mit der GNU General
Public License (GNU GPL). Allen gemeinsam ist, dass es Freie Software ist,
welche ohne Restriktionen benutzt werden kann, studiert und ver�ndert werden
darf, sowie, dass �nderungen weitergeben d�rfen. Wenn die Quelltexte (also
gpg4win-x.y.z.tar.bz2) mit weitergegeben werden und auf die die GNU
GPL hingewiesen wird, ist die Weitergabe fast immer m�glich.

Zur �bersicht folgt eine Liste der Copyright Erkl�rungen.


!PKG-COPYRIGHT!


*** Ende der Datei ***
