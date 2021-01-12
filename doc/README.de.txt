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

- GpgOL: Ein kritischer Fehler der seit Gpg4win-3.1.12 existierte
  wurde behoben bei der Auswahl von "Kein Schl�ssel" f�r einen
  Empf�nger konnte es dazu kommen das an beliebige Schl�ssel
  verschl�sselt wurde. (T5223)

- GpgOL: auto-key-retrieve in der GnuPG Konfiguration f�hrt nun
  nicht mehr zu "Keine Daten" Fehlern beim betrachten signierter
  Mails. (T5164)

- GpgOL: Der Fehler "Keine Daten" wird nun besser behandelt und
  zeigt hilfreiche Informationen in der Mail-Ansicht. (T5164)

- GpgOL: Der Name f�r VS-NfD Konformit�t ist nun in der libkleopatrarc
  konfigurierbar.

- Kleopatra: Der Dialog um neue Schl�ssel zu erstellen wurde
  vereinfacht und macht es nun leichter Schl�ssel ohne zus�tzlichen
  Passphrase Schutz zu erstellen. Dies kann mit der Option
  "enforce-passphrase-constraints" in der gpg-agent Konfiguration
  deaktiviert werden. (T5181)

- Kleopatra: Name und Mailaddresse f�r neue Schl�ssel werden nun �ber
  Active Directory bef�llt wenn diese Information verf�gbar ist.
  (T5181)

- Kleopatra: Das erstellen von S/MIME CSRs zu OpenPGP Smartcards
  wurde weiter verbessert. (T5127)

- Kleopatra: Die Unterst�tzung f�r Tags in Beglaubigungen wurde
  deutlich verbessert und tags werden nun auch ber�cksichtigt wenn
  man Schl�ssel zur Datei-Verschl�sselung ausw�hlt. (T5174)

- Kleopatra: Das ausf�hren mit erh�hten Rechten (als Administrator starten)
  wird nun verhindert um zu vermeiden das die Dateirechte im GnuPG
  Datenordner fehlerhaft gesetzt werden. (T5212)

- Klepoatra: Das setzen der initialen SigG PIN f�r NetKey Karten funktioniert
  nun auch wenn die generelle PIN nicht gesetzt ist. (T5220)

- GnuPG: Es gibt nun eine systemweite Konfigurationsm�glichkeit
  Konfigurationsdateien unter "%ProgramData%\GNU\etc\gnupg" werden
  nun ber�cksichtigt. Das Format entspricht der Nutzerkonfiguration
  unter "%AppData%\gnupg" mit zus�tzlicher Syntax um Optionen zu
  erzwingen und andere zu ignorieren. (T4788)

- GnuPG: OpenPGP Zertifikate k�nnen nun automatisch
  �ber Active Directory bezogen werden.

- GnuPG: F�r LDAP Schl�sselserver wird nun ein verbessertes
  Schema verwendet.

- GnuPG: Auf Version 2.2.27 aktualisiert:
  https://lists.gnupg.org/pipermail/gnupg-announce/2021q1/000452.html

  Ank�ndigung von Version 2.2.26:
  https://lists.gnupg.org/pipermail/gnupg-announce/2020q4/000451.html

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
