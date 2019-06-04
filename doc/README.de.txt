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

- Kleopatra: Die Zertifikats-Ansicht hat nun konfigurierbare Spalten
  und verliert bei einer Aktualisierung nicht l�nger den Zustand.
  (T4557 T3888 T3604)

- Kleopatra: Der Dialog um Benutzerkennungen hinzuzuf�gen wurde
  �berarbeitet und vereinfacht. (T4139)

- Kleopatra: Die Warnung bei der Suche nach einem Fingerprint
  wurde entfernt und das vorgeschlagene verhalten automatisiert.
  (T4164)

- Kleopatra: Der Dialog um Beglaubigungen anzuzeigen wurde
  verbessert um den Zustand der Beglaubigungen besser anzuzeigen.
  (T4458)

- GpgOL: S/MIME Zertifikate k�nnen nun �hnlich wie OpenPGP Keys
  im Adressbuch hinterlegt werden. (T4479)

- GpgOL: Ein m�glicher Verlust von Anh�ngen beim weiterleiten
  von verschl�sselten und unverschl�sselten Mails wurde behoben.
  (T4526)

- GpgOL: Es kann nicht l�nger passieren das Anh�nge mit
  einer Content-ID unsichtbar sind auch wenn diese nicht
  in der Nachricht referenziert werden. (T4203)

- GpgOL: Die Verschl�sselung von Entw�rfen als optionales und
  aktuell experimentelles Feature, wurde hinzugef�gt. (T4388)

- GpgOL: S/MIME Mails verwenden nun die gleichen Icons wie
  Outlook S/MIME Mails um Verwirrung zu vermeiden. (T4558)

- GpgOL: Das interne Format f�r S/MIME Nachrichten wurde
  ge�ndert um die Kompatibilit�t mit anderen Mail-Klienten
  zu verbessern. (T4278 T4553)

- GpgOL: Automatische Verschl�sselung wird nicht mehr ausgel�st
  f�r Nutzer ohne S/MIME Zertifikate, wenn S/MIME bevorzugt wird.
  (T4483)

- GpgOL: Eine M�glichkeit das S/MIME Mails weiterhin von GpgOL
  behandelt wurden auch wenn S/MIME ausgeschaltet war existiert
  nicht l�nger. (T3935)

- GpgOL: Der Dialog zur Sicherheits-Best�tigung wurde verbessert
  und behandelt nun Situationen mit mehreren Schl�sseln besser.
  (T4559)

- GpgOL: Mehrere seltene Abst�rze die nur auftraten wenn die
  Speicherfehler-Analyse in der Fehlersuche aktiviert war wurden
  behoben.

- GpgOL: Es werden nun einige weitere, fehlerhaft konstruierte,
  Mails von anderen Klienten akzeptiert. (T4552)

- GpgOL, Kleopatra: Eine Timing-Situation die dazu f�hren
  konnte das das komplette GnuPG-System einfriert wurde
  behoben.

- GnuPG: Auf Version 2.2.16 aktualisiert.
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
