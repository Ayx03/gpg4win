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

- Kleopatra: Die Gruppen Konfiguration wurde erweitert so das nun
  Gruppen nun exportiert und importiert werden k�nnen. (T5638)

- Kleopatra: Es wird nun die verwendete GnuPG Version im
  "�ber Kleopatra" Dialog angezeigt. (T5652)

- Kleopatra: Eine Option wurde hinzugef�gt durch die rein
  symmetrische Ve erzwungen werden kann. (T5661)

- Kleopatra: Verwendbare Smartcard-Leser k�nnen nun unter Einstellungen
  angezeigt werden. (T5662)

- Kleopatra: Der Hinweis auf aktualisierte Versionen funktioniert nun
  wieder. (T5663)

- Kleopatra: Die Pr�fung auf RESTRICTED / VS-NfD Konformit�t ber�cksichtigt
  nun die Konfiguration der zugrundeliegenden Bibliotheken. (T5362)

- Kleopatra: Es wurde eine Fehlerbehandlung f�r Aktionen eingef�hrt
  die nicht der konfigurierten Konformit�t entsprechen. (T5653)

- Kleopatra: Die Konfiguration von Schl�sselservern wird nun
  auch angezeigt wenn Sie in dirmngr.conf vorgenommen wird. (T5672)

- Kleopatra: Smartcard-Leser k�nnen nun �ber ein Men� in der GnuPG-System
  Smartcard Konfiguration ausgew�hlt werden. Dabei werden verf�gbare Leser
  angezeigt. (T5666)

- Kleopatra: Bei der Suche nach Zertifikaten �ber die Zertifikatsliste
  wird nun bei einer folgenden Suche auf einem Server der Suchstring
  schon vorausgef�llt. (T5624)

- Kleopatra: Es k�nnen nun sowohl S/MIME als auch OpenPGP Zertifikate
  aus einer einzelnen Datei importiert werden. (T5638)

- Kleopatra: Konfigurations-Seiten k�nnen nun individuell versteckt
  werden. (T5689)

- Kleopatra: Der Assistent f�r neue Schl�sselpaare kann nun
  mit individuellen Platzhaltern und Ablaufdaten vorkonfiguriert
  werden. (T5690 T5708)

- Kleopatra: Es ist nun m�glich einen OpenPGP Modus zu konfigurieren
  in dem die meisten Aktionen f�r S/MIME (CMS) versteckt werden.
  (T5688)

- Kleopatra: Die GnuPG-System Konfiguration wurde leicht
  aufger�umt. (T5677)

- Kleopatra: Ein Absturz im Zusammenhang mit rekursiven
  Zertifikatsketten wurde behoben. (T5697)

- Kleopatra: Es wird nun der korrekte Pfad f�r den UIServer Socket
  verwendet

- Kleopatra: Fenster erscheinen nicht mehr im Hintergrund
  wenn Kleopatra nicht das aktive Vordergrund Fenster war.
  (T5533)

- Kleopatra: Die Konfiguration von LDAP Verzeichnisdiensten
  wurde verbessert. (T5465)

- Kleopatra: Es ist nun m�glich ein Ablaufdatum f�r eine
  beglaubigung zu setzen. (T5336)

- Kleopatra: Es ist nun m�glich auch das Ablaufdatum von
  unterschl�sseln zu �ndern. (T4717)

- Kleopatra: Der standard Schl�sselserver wird nun von GnuPG
  abgefragt. (T5514)

- Kleopatra: Es wird nun aufgefordert das Beglaubigungsvertrauen
  zu setzen wenn man mit einem nicht vertrautem Schl�ssel
  eine Beglaubigung durchf�hrt. (T5511)

- Kleopatra: Symmetrische Verschl�sselung ist nun vorausgew�hlt
  wenn keine Schl�ssel vorhanden sind. (T5545)

- Kleopatra: Jede Aktion im Verschl�sselungs-Dialog hat nun
  einen Keyboard-Shortcut. (T5544)

- Kleopatra: Die Barrierefreiheit, besonders f�r Verschl�sselung
  wurde stark verbessert. (T5535)

- GpgOL: Inhalte werden nun angezeigt wenn die Pr�ferenz
  von reinen Text Mails �ber Gruppen-Richtlinien gesetzt wird.
  (T5681)

- Pinentry: Symmetrische Passw�rter werden nun formatiert
  angezeigt wenn die entsprechende Option
  "pinentry-formatted-passphrase" im gpg-agent
  gesetzt wurde. (T5517)

- Pinentry: Es ist nun m�glich sichere Passw�rter f�r
  die symmetrische Verschl�sselung �ber den gpg-agent
  zu generieren. (T5517)

- Pinentry: Es ist jetzt m�glich angepasste Hilfe Texte
  zu hinterlegen um Passwort-Regeln anzuzeigen. (T5517)

- Pinentry: Passwort Regeln k�nnen nun besser gepr�ft
  werden und ein nicht entsprechendes Passwort wird
  nicht mehr aus der Eingabe gel�scht. (T5532)

- Pinentry: Es wird nun eine Warnung angezeigt wenn
  die Hochstelltaste aktiv ist. (T4950)

- Pinentry: Die Barrierefreiheit des Dialogs wurde
  verbessert so das alle Warnungen und Aktionen gut
  von Screenreadern verarbeitet werden.

- GnuPG: Die Unterst�tzung f�r Passwort-Regeln wurde
  verbessert und erlaubt nun auch Sonder-Regeln f�r
  symmetrische Passw�rter.
  (T5517)

- GnuPG: Die Socket Dateien liegen nun unter
  Appdata/Local. (T5537)

- GnuPG: Eine neue, optionale, Konfigurations-Syntax wurde implementiert
  mit der das System dynamisch konfiguriert werden kann. Dabei k�nnen
  Variablen aus der Windows Registry gelesen und �ber Gruppenrichtlinen
  konfiguriert werden.

- GnuPG: Der "PIN-Cache" wird nun korrekter als "Passwort-Cache"
  bezeichnet.

- GnuPG: Die konfigurierten "trusted-key" Optionen k�nnen nun
  korrekt ge�ndert werden. (T5685)

- GnuPG: Die Auswahl des Standard Smartcard-Lesers versucht nun
  virtuelle Smartcard-Leser zu ignorieren. (T5644)

- GnuPG: Mit dem Kommando "gpgconf --show-configs" kann nun die
  vollst�ndige Konfiguration des Systems aufgelistet werden.

- GnuPG: Ein neuer, experimenteller Datenbank-Dienst f�r Zertifikate wurde
    implementiert.  Um diesen zu verwenden kann "use-keyboxd" in die gpg.conf
    und gpgsm.conf hinzugef�gt werden. Mit der vewendeten SQlite Datenbank
    werden alle Schl�sseloperationen viel schneller.

- GnuPG: Ein gro�es Update auf Version 2.3.4.

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
