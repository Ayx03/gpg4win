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

- GpgOL: Es werden nun auch Outlook Elemente, wie etwa weitergeleitete
  Mails oder Kontakte und Termine in Krypo Mails unterst�tzt. (T4184)

- GpgOL: Die Warnung zu "Widerspr�chlichen Krypto Einstellungen"
  ignoriert nun undokumentierte Werte von Outlook. (T5335)

- Kleopatra: Das neue Feature "Gruppen" erlaubt es, Gruppen zu
  definieren, die dann bei der Empf�nger-Auswahl als Ganzes
  ausgew�hlt werden k�nnen. (T5175 T5241)

- Kleopatra: Verschl�sseln funktioniert nun auch wieder mit
  Windows Netzwerkpfaden. (T5216)

- Kleopatra: Die Pr�fung ob Kleopatra mit erh�hten Rechten
  ausgef�hrt wird, f�hrt nur noch zu einer Warnung und nicht
  mehr zu einem Fehler. (T5248)

- Kleopatra: Das gleichzeitige Exportieren von S/MIME und
  OpenPGP Zertifikaten wurde vereinfacht. (T5002)

- Kleopatra: Die Suche zeigt nicht l�nger alle Ergebnisse als
  "nicht beglaubigt" an. (T5388)

- Kleopatra: Neue Unterst�tzung f�r weitere CardOS Smartcards.
  (T4876)

- Kleopatra: Zertifikate werden nun passend zur eingesteckten
  Smartcard von einem konfigurieren Active Directory bzw. LDAP
  Server geladen. (T4876)

- Kleopatra: Bei der Beglaubigung kann man nun festlegen, dass
  ein Zertifikat vertrauensw�rdige Beglaubigungen f�r eine bestimmte
  Dom�ne ausstellen darf. So kann man eine Infrastruktur etablieren,
  bei denen die Verantwortlichkeit f�r eine Dom�ne delegiert wird.
  (T5245)

- Kleopatra: Die Benutzbarkeit der Smartcard Ansicht wurde
  weiter verbessert. (T4876)

- Kleopatra: Komplexe LDAP Schl�sselserver Eintr�ge k�nnen nun
  eingegeben werden ohne das es zu Syntax Fehlern kommt. (T5404)

- Kleopatra: Sehr gro�e Archive f�hren nun nicht l�nger zu einem
  Absturz von Kleopatra. (T5475)

- Kleopatra: Das Entschl�sseln von Archiven wurde beschleunigt.
  (T5478)

- Kleopatra: Verschl�sseln von Ordnern mit Dateien, die gr��er
  als 4GB sind, f�hrt nun nicht mehr zu fehlerhaften Archiven.
  (T5478)

- Kleopatra: Die Suche in LDAP / Active Directory kann nun mehr
  als einen Schl�ssel anzeigen und zeigt die korrekten Details.
  (T5441)

- GnuPG: OpenPGP Schl�ssel aus dem LDAP werden nun mit
  Beglaubigungen importiert. (T5387)

- GnuPG: Dateien die mit S/MIME (CMS) aber nur mit Passwort
  verschl�sselt wurden, k�nnen nun entschl�sselt werden.

- GnuPG: Sonderzeichen auf der Kommandozeile werden nun erneut
  gehandhabt. (T4398)

- GnuPG: Auf Version 2.2.28 aktualisiert:
  https://lists.gnupg.org/pipermail/gnupg-announce/2021q2/000460.html


3. Hinweise
===========

- GpgOL

  * Crypto E-Mails, die als Anhang weitergeleitet wurden,
    werden nicht verarbeitet.

  * Integrierte Microsoft spezifische OLE Objekte sind nicht
    unterst�tzt.

  * Als weitere Sprachen sind nur Englisch, Niederl�ndisch
    und Portugiesisch verf�gbar.

- Allgemein

  * F�r Version planen wir mit GpgOL, optional, in einen st�rker
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
