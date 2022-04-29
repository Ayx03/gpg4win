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

--- Accessibility ---

- Kleopatra: OpenPGP und S/MIME Schl�sselerstellung sind nun f�r
  Barrierefreiheit optimiert. (T5832)

- Kleopatra: Die Tab Leiste f�r verschiedene Zertifikatsansichten
  ist nun immer sichtbar. (T5841)

- Kleopatra: Die Zertifikatsliste kann nun mit den Pfeiltasten
  navigiert werden, um sie zug�nglicher f�r Tastatureingabe zu machen.
  (T5841)

- Kleopatra: Leere Zellen in der Zertifikatsliste haben nun
  Screenreader spezifische Anmerkungen, damit sie z.B. als: "kein Name"
  oder "keine E-Mail" gelesen werden. (T5841)

- Kleopatra: Schl�sselkennungen und Fingerabdr�cke werden nun von
  Screenreadern in Gruppen von vier Zeichen gelesen. (T5841)

- Kleopatra: Der Dateiverschl�sselungsdialog wurde hinsichtlich
  Barrierefreiheit optimiert. (T5845)

- Kleopatra: Der Zertifikatsauswahl-Dialog, welcher aus dem
  Dateiverschl�sseln Dialog aufgerufen werden kann, wurde
  hinsichtlich der Barrierefreiheit optimiert. (T5876)

- Kleopatra: Der Dialog zum Hinzuf�gen von Benutzerkennungen
  wurde vollst�ndig auf Barrierefreiheit hin �berarbeitet.
  (T5916)

--- Features ---

- Kleopatra: Das GnuPG Backend kann jetzt �ber eine
  Men�option unter Extras neu gestartet Werden. (T5775)

- Kleopatra: In der erweiterten Schl�sselerstellung weist
  nun ein Tooltip auf den Zweck von Unterschl�sseln hin. (T5781)

- Kleopatra: In den Zertifikatsdetails kann der Fingerprint
  nun einfach ohne Leerzeichen in die Zwischenablage kopiert
  werden. (T5776)

- Kleopatra: Die Smartcard Leser Einstellungen sind nun
  auf einer eigenen Konfigurationsseite. (T5857)

- Kleopatra: Es ist nun m�glich den eigenen Schl�ssel
  zur�ckzurufen. (T5859)

- Kleopatra: Der Dialog zum Hinzuf�gen von Benutzerkennungen
  wurde �berarbeitet und akzeptiert nun auch Namen,
  die mit einer Zahl beginnen. (T5916)

- Kleopatra: Es ist nun m�glich eine minimale und maximale
  G�ltigkeitsdauer f�r Schl�ssel zu konfigurieren. (T5864)

- Kleopatra: Eine falsche Passphrase bei der symmetrischen
  Entschl�sselung zeigt nun false Passphrase an und nicht
  nur fehlerhafter Sitzungsschl�ssel. (T5406)

- Kleopatra: Unterst�tzung f�r S/MIME Zertifikate auf PKCS#15 Smartcards.

- GpgEX: Es ist nun m�glich das Standardkommando �ber
  die Windows registry zu konfigurieren. (T5915)

- GnuPG: Dreifache Geschwindigkeit beim entschl�sseln gro�er Dateien.
         (T5820)
    Um diese Verbesserungen voll auszunutzen sollte die Kommandozeile
    verwendet werden.

- GnuPG: Neue Option "--require-compliance" um einen Fehler zu erzeugen
  wenn eine Operation nicht der compliance Einstellung entsprach.

- GnuPG: Tar Archive unterst�tzen nun l�ngere Dateinamen als MAX_PATH.
  (T5754)

- GnuPG: Unterst�tzung f�r GeNUA Smartcards.

- GnuPG: WKD Suche funktioniert nun auch mit DNS Servern welche keine
  SRV Eintr�ge verarbeiten. (T4729)

- GnuPG: Auf Version 2.2.35 aktualisiert.

--- Bug fixes ---

- Kleopatra: Mehrere Stellen, an denen der Name der
  Anwendung klein geschrieben wurde, sind angepasst
  worden. (T5833)

- Kleopatra: Ein Absturz wurde behoben, der auftrat,
  wenn man eine Beglaubigung zur�ckzurufen versuchte
  ohne einen Schl�ssel gew�hlt zu haben. (T5858)

- Kleopatra: Der Zertifikatsfilter f�r nicht beglaubigte
  Zertifikate zeigt nun nicht mehr alle invaliden
  Zertifikate an, sondern nur die nicht beglaubigten.
  (T5850)

- Kleopatra: Erzwingen des Schl�sseltyps �ber die
  Konfiguration erzwingt nun auch korrekte
  Schl�sselverwendungs-Einstellungen. (T5856)

- GpgOL: Eine doppelte Speicherfreigabe wurde behoben,
  die zu Abst�rzen h�tte f�hren k�nnen. Diese Speicherfreigabe
  war nicht als Sicherheitsproblem ausnutzbar.

- GnuPG: Konfigurationswerte aus der Windows Registry werden nun
  korrekt bei gpgconf --show-configs angezeigt. (T5724)

- GnuPG: Weitere nicht konforme Verschl�sselungsalgorithmen k�nnen
  nun im Konformit�tsmodus entschl�sselt werden.

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
