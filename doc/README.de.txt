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

- Gpg4win-3.1.7 ist eine kleine Aktualisierung von 3.1.6 um
  neu eingef�hrten Fehler in Kleopatra und GPA zu beheben. Im
  folgenden die �nderungen aus 3.1.6:

- Kleopatra: Ein Fehler wurde behoben der dazu f�hren
  konnte das Kleopatra fehlerhafte TAR Archive erstellte. (T4332)
  Mehr Informationen f�r betroffene:
  https://wiki.gnupg.org/TroubleShooting#Restoring_corrupted_Archives_created_by_Kleopatra

- Kleopatra: Beim Import aus X509 Verzeichnis-Diensten
  werden nun auch trusted-certs ber�cksichtigt. (T4269)

- Kleopatra: Das sichern geheimer Schl�ssel wurde
  vereinfacht. (T4089)

- Kleopatra: Es ist nun m�glich Schl�ssel ohne
  Signaturfunktion zu erstellen. (T4373)

- Kleopatra: Startet nun etwas schneller.

- Kleopatra: Schl�ssel k�nnen nun wieder auf OpenPGP
  Smartcards erstellt werden. (T4428)

- Kleopatra: Zeigt nun den verschl�sselten, eingebetteten,
  Dateinamen an falls dieser vom richtigen Namen abweicht.

- Kleopatra, GnuPG: Geheime Schl�ssel die von Symantec PGP Desktop
  exportiert wurden k�nnen nun direkt importiert werden. (T4392)

- Pinentry: Ein Problem das dazu f�hren konnte das Pinentry
  in manchen, minimalen, Installationen nicht startete
  wurde behoben. (T4347)

- GPA: Ein Fehler beim erstellen neuer Schl�ssel wurde behoben.
  (T4265)

- GpgOL: Das Kontextmen� von Krypto-Mails erlaubt es nun
  Nachrichten dauerhaft zu entschl�sseln. (T3895)

- GpgOL: Das weiterleiten von selbst versendeten Krypto-Mails
  funktioniert nun. (T4321)

- GpgOL: Das erkennen von S/MIME Mails wurde verbessert.
  Insbesondere beim Versand von Exchange zu Exchange.
  (T4262 T3935)

- GpgOL: Es werden nun Diagnose-Ausgaben angezeigt falls
  das signieren / verschl�sseln fehlschl�gt. (T4435)

- GpgOL: Ein Absturz der mit aktivierter Speicheranalyse
  auftreten konnte wurde beseitigt. (T4262)

- GpgOL: Mit der neuen Option "Alle in Mails enthaltene Schl�ssel
  importieren" importiert GpgOL Schl�ssel aus Mail Headern und
  anh�ngen. (T4432)

- GpgOL: Die Option um Mails automatisch abzusichern kann
  nun modifiziert werden das auch nicht vertrauensw�rdige
  Schl�ssel ber�cksichtigt werden. (T4432)

- GpgOL: Ein verschl�sselter Betreff (z.B. von Enigmail) wird
  nun nach dem entschl�sseln angezeigt. (T4433)

- GpgOL: Es werden nun beschreibende Namen f�r die OpenPGP
  MIME-Teile verwendet. (T4258)

- GpgOL: Es existiert nun eine Programmierschnittstelle
  um GpgOL von anderen Addins oder Programmen heraus
  anzusprechen damit diese mit Krypto-Mails arbeiten
  k�nnen die GpgOL sonst blockieren w�rde.
  (T4241)

- GpgOL: Es wird nun eine Warnung angezeigt wenn GpgOL
  einen Anhang in einem Outlook internen Format, etwa
  einen Termin, nicht abbilden kann. (T4184)

- GnuPG: Ein Problem das "dirmngr" auf manchen Systemen
  nicht gestartet werden konnte ist behoben. (T3381)

- GnuPG: Auf Version 2.2.15 aktualisiert.
  (Siehe: https://gnupg.org f�r die Neuigkeiten.)

3. Anmerkungen
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
