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

Gpg4win l�uft auf Windows Versionen 7 oder neuer. Inklusive Windows
Server ab Version 2008. Es werden sowohl 32- und 64bit-Systeme unterst�tzt.
Wird mindestens Windows XP verwendet, k�nnen einige Komponenten von
Gpg4win verwendet werden, sie sind allerdings nicht offiziell unterst�tzt.

Das Outlook-Plugin GpgOL ist kompatibel mit Microsoft Outlook 2010 und sp�teren
Versionen (sowohl 32 als auch 64bit) und unterst�tzt E-Mail Transport per SMTP/IMAP
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

- GPA: Macht's gut, und danke f�r den Fisch.  Um den
  Wartungsaufwand zu verringern und die allgemeine Qualit�t von
  Gpg4win zu verbessern, haben wir entschieden, GPA nicht weiter
  auszuliefern.  Im letzten Jahrzehnt wurde zudem Kleopatra
  erheblich weiterentwickelt und wir richten unserer Hauptaugenmerk
  weiterhin auf dessen Entwicklung.

--- Features ---

- GnuPG: Die �berpr�fung von Signaturen ist jetzt viermal
  schneller.  Das Signieren ist jetzt doppelt so schnell.  [T5826]

- GnuPG: Zus�tzlich eingef�gte Revocation Zertifikate werden jetzt
  mit importiert um das WKD zu verbessern.

- GnuPG: Das Programm gpg-wks-client hat jetzt eine neue Option
  --add-revocs.  [rG2f4492f3be]

- GnuPG: Das Programm gpg-wks-client ignoriert jetzt abgelaufene
  User IDs.  [T6292]

- GnuPG: Die Telesec Signature Card v2.0 wird jetzt f�r OpenPGP
  unterst�tzt.  [T6252]

- GnuPG: F�r das neue AEAD Format wird jetzt nur noch der schnelle
  OCB Modus erlaubt.  Der EAX Modus steht aber noch zur
  Entschl�sselung bereit.  [rG5a2cef801d]

- Kleopatra: Der Import von Zertifikaten aus nicht Standard
  konformen UTF-16 kodierten Textdateien ist nun m�glich.  [T6298]

- Kleopatra: Neue Option um den lokal gespeicherten geheimen
  Schl�ssel nach der �bertragung auf eine Smartcard zu l�schen.
  [T5836]

- Kleopatra: Im Dialog zur Einrichtung von Gruppen wurde die
  Darstellung von Schl�sseln verbessert.  [T6295]

- Kleopatra: Der Dialog zur �nderung der Vertrauensw�rdigkeit des
  Besitzers wurde vereinfacht.  [T6148]

- Kleopatra: Bei der Generierung von Schl�sseln auf Smartcards
  werden jetzt auch unterst�tzte ECC Kurven angeboten.   [T4429]

--- Bug fixes ---

- GnuPG: Die X.509/CMS DLL Libksba wurde auf Version 1.6.3
  aktualisiert um ein Sicherheitsproblem im Parser von CRL
  Signaturen zu beheben.  [T6230]

- GnuPG: Trusted Introducer funktionieren jetzt auch mit einer
  Mailadresse ohne spitze Klammern.  [T6238]

- GpgOL: IMAP Zugriff auf verschl�sselte Mails funktioniert wieder.
  [T6203]

- Kleopatra: Es wird nicht mehr "Erfolg" angezeigt, wenn die
  Beglaubigung eines Schl�ssels abgebrochen wurde.  [T6305]

- Kleopatra: Fehler beim Import werden jetzt direkt angezeigt.
  [T6302]

- Kleopatra: S/MIME Zertifikate, die zum Signieren oder
  Verschl�sseln nicht g�ltig sind, werden nicht mehr angeboten.
  [T6216]

- Kleopatra: Die Benutzerin wird nicht mehr gefrat, ein
  importiertes aber abgelaufen oder widerrufenes OpenPGP Zertifikat
  zu beglaubigen.  [T6155]

- Kleopatra: Ein Absturz nach dem Schlie�en eines Details Dialogs
  wurde behoben.  [T6180]

- Kleopatra: Verbesserungen an der Barrierefreiheit des
  Notizblocks.  [T6188]

3. Hinweise
===========

- GpgOL

  * Crypto E-Mails, die als Anhang weitergeleitet wurden,
    werden nicht verarbeitet.

  * Integrierte Microsoft spezifische OLE Objekte sind nicht
    unterst�tzt.

  * Als weitere Sprachen sind nur Englisch, Niederl�ndisch
    und Portugiesisch verf�gbar.



4. Versionsgeschichte
=====================

Eine aktuelle, deutschsprachige �bersicht der �nderungen finden Sie online
unter: https://www.gpg4win.de/change-history-de.html


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
