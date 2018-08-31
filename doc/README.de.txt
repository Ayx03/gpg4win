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

- GpgOL: Krypto-Mails k�nnen nun auch verschoben werden wenn
  diese ge�ffnet sind.

- GpgOL: Nachrichten werden automatisch abgesichert wenn beglaubigte
  Schl�ssel / Zertifikate f�r alle Empf�nger gefunden werden konnten.
  Dies kann mit der Option "Nachrichten automatisch absichern"
  abgew�hlt werden. (T3999)

- GpgOL: Unterst�tzung f�r Verteilerlisten wurde hinzugef�gt. (T4065)

- GpgOL: S/MIME kann nun bei der automatischen Schl�ssel-Aufl�sung
  bevorzugt werden. (T3961)

- GpgOL: Verschl�sselung sollte Outlook nicht l�nger einfrieren.
  (T3838)

- GpgOL: Mails welche durch Outlook Ordner Regeln verschoben wurden
  werden nun von GpgOL verarbeitet. (T4070)

- GpgOL: Der Konfigurations-Dialog wurde erneuert um zuk�nftig besser
  erweitert werden zu k�nnen. (T3944)

- GpgOL: Eine Reihe von Speicherfehlern und Stabilit�ts-Problemen wurde
  behoben.

- GpgOL: Das erneute verifzieren einer Mail ist nun deutlich schneller.

- GpgOL: Abst�rze im Zusammenhang mit den Dateienamen von Anh�ngen
  wurden behoben. (T4062 T4032)

- GpgOL: Ein Fehler wurde behoben der dazu f�hren konnte das Anh�nge
  nicht korrekt angezeigt wurden.

- GpgOL: Bei der Signaturpr�fung wird nun auch "im Auftrag von"
  ber�cksichtig. (T4110)

- Kleopatra: Diagnoseausgaben werden nun bei Entschl�sselungs-Fehlern
  angeboten.

- Kleopatra: Unterst�tzung f�r NetKey v3 Smartcards wurde verbessert.
  (T4080)

- Kleopatra: Es wird nun mit Entschl�sselungs-Fehlern durch fehlenden
  Integrit�tsschuz sauber umgegangen. (T4038)

- Kleopatra: Die Update-Pr�fung kann nun einfacher deaktiviert werden.
  (T4043)

- Kleopatra: Sonderzeichen in der Ausgabe von GnuPG sollten nun
  korrekt dargestellt werden. (T2983)

- Kleopatra: p7m und p7s Dateien werden nun auch mit Kleopatra
  verkn�pft. (T3890)

- Kleopatra: Verschiedene kleinere Verbesserungen.
  (T3238 T4078 T3229 T4041)

- Installer: Der Installer schlie�t nun Anwendungen auch bei der
  stillen Installation. (T4051)

- Installer: Neues, optionales, Modul "Browser Integration" um GnuPG
  als backend f�r Mailvelope 3.0 zu registrieren.

- GnuPG: Der dirmngr Dienst fragt nun nicht mehr nach einer
  Windows Firewall Regel. (T3610)

- GnuPG: Die Verarbeitung von S/MIME Daten wurde beschleunigt.
  (T4069)

- GnuPG: Aktualisiert auf Version 2.2.10.
  (Siehe: https://lists.gnupg.org/pipermail/gnupg-announce/2018q3/000428.html )


3. Anmerkungen
==============

- GpgOL

  * Crypto E-Mails, die als Anhang weitergeleitet wurden,
    werden nicht verarbeitet.

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
