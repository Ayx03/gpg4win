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

- GpgOL: Verbesserte Behandlung von Mails mit verschl�sseltem
  Betreff. (T4796)

- GpgOL: Die Integration mit Web Key Diensten um �ffentl.
  Schl�ssel zu ver�ffentlichen wurde verbessert. (T4839)

- GpgOL: Die Addressbuch Integration ist nun st�rker sichtbar.
  (T4874)

- GpgOL: Die Vorauswahl des Signaturschl�ssels ber�cksichtigt
  nun auch Gruppenpostf�cher. (T4090)

- GpgOL: W�hrend der Signaturpr�fung wird nun eine
  Vorschau angezeigt. (T4944)

- GpgOL: Das Drucken von verschl�sselten Mails funktioniert
  nun auch nach dem �ndern des Druckers. (T4890)

- GpgOL: Die Sicherheitsstufe von Schl�sseln aus einem
  Web Key Directory ist nun korrekterweise Stufe 2.

- GpgOL: Dauerhaftes Entschl�sseln funktioniert nun
  zuverl�ssiger und sollte nicht mehr zu "No Data" Fehlern
  f�hren. (T4718)

- GpgOL: Lange Zeilen in "Nur Text" Mails werden nicht
  mehr auf mehrere Zeilen nach dem Entschl�sseln umgebrochen.
  (T4987)

- GpgOL: Anh�nge mit Sonderzeichen im Dateinamen die das
  Windows Dateisystem verbietet, k�nnen nun verarbeitet
  werden. (T4835)

- GpgOL: Mails mit exakt einem Anhang, ohne Nachricht,
  werden nun korrekt dargestellt.

- GnuPG: Symmetrische Verschl�sselung fragt nun in
  nur einem Dialog nach dem Passwort. (T4971)

- GnuPG: Verbesserter Import von einigen S/MIME
  Zertifikaten. (T4847)

- GnuPG: Basierend auf der D-Trust 3.1 Karte werden
  nun CardOS 5 Karten unterst�tzt.

- GnuPG: Unterst�tzung f�r rsaPSS Signaturen wurde hinzugef�gt.
  (T4538)

- GnuPG: Die "Qualit�t" einer neuen Passphrase wird nun
  nicht mehr falsch dargestellt. (T2103)

- Kleopatra: Das �berschreiben von Exports des privaten
  Schl�ssels funktioniert nun korrekt. (T4709)

- Kleopatra: Ein Fehler wurde behoben durch den der
  Dateiverschl�sselungsdialog auf Systemen mit hoher
  Aufl�sung nicht korrekt angezeigt wurde. (T4819)

- Kleopatra: Die Sortierung mehrerer Tabs wurde korrigiert.

- Kleopatra: Die minimale L�nge des Namens wurde
  reduziert um besser die nicht lateinische Sprache zu
  unterst�tzen. (T4745)

- Kleopatra: Der vorgeschlagene Dateiname beim
  Export wurde verbessert um eine Verwechslung zwischen
  privaten und �ffentlichen Schl�sseln zu vermeiden.
  (T4995)

- Kleopatra: Authentifizierungs-Schl�ssel k�nnen nun im
  OpenSSH Format exportiert werden.

- Kleopatra: Markup wird nun automatisch entfernt wenn
  man Daten in den Notizblock kopiert. (T4969)

- Kleopatra: Es wird nun nicht l�nger "aktualisiere..." als
  G�ltigkeit angezeigt wenn man eine Suche auf dem Schl�sselserver
  durchf�hrt. (T4948)

- Gpg4win: Die Datei und URL verkn�pfungen mit Kleopatra spalten nun
  korrekt Argumente und potentiell externe Daten wie Dateinamen und
  Such-Parameter.
  Dies verhindert ein Sicherheits-Problem mit dem Kleopatra dazu
  gebracht werden konnte eine Bibliothek von einem Pfad zu laden
  der durch eine nicht escapte URL �bergeben wurde.

==============

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
