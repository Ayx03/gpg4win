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

--- Features ---

- GnuPG: Verwendet SHA-256 f�r Zertifikate mit impliziten SHA-1
  Einstellungen, um den Fehler "Ung�ltige Hashmethode" im VS-NfD
  Modus zu vermeiden. (T6043)

- GnuPG: Es ist jetzt m�glich administrativ zu verhindern, dass
  Nutzer weiteren Wurzelzertifikaten vertrauen k�nnen.  Die
  Option ist "no-user-trustlist". (T5990)

- GnuPG: Es ist jetzt f�r Administratoren m�glich, den Dateinamen
  (trustlist.txt) der Liste von vertrauensw�rdigen Wurzelzertifikaten
  zu �ndern mit der Konfigurationsvariablen "sys-trustlist-name"
  oder unter Windows in der Registry.
  Dies erlaubt die �nderung der Voreinstellung ohne dass
  sie bei einem Update �berschrieben wird. (T5990)

- GnuPG: Der Dialog, der zum Einlegen der Smartcard auffordert,
  zeigt nun die "Anzeige-Seriennummer" an.  Dies sollte der Nummer
  entsprechen, welche auf die Smartcards gedruckt ist. (T6135)

- GpgOL: Gruppen, welche in Kleopatra konfiguriert wurden, k�nnen
  nun zur Mailverschl�sselung verwendet werden.  Gruppen d�rfen
  dabei nur Zertifikate aus einem Protokoll (entweder S/MIME oder
  OpenPGP) enthalten und m�ssen nach der Mailadresse benannt sein.
  (T5967)

- GpgOL: Ein Ausrufezeichen am Ende der GpgOL Konfigurationswerte
  aus der "Local Machine" Windows Registry sorgt nun daf�r,
  dass diese Option f�r Nutzer nicht �nderbar ist. (T5827)

- Kleopatra: Alle Konfigurationseinstellungen aus der kleopatrarc
  sind nun auch �ber die Windows Registry bzw. Gruppenrichtlinien
  einstellbar. (T5707)

- Kleopatra: Das automatische Entpacken von tar Archiven kann nun
  �ber die Kleopatra Konfiguration deaktiviert werden. (T6057)

- Kleopatra: Der original Dateiname wird nun in verschl�sselten
  Dateien eingebettet. (T6056)

- Kleopatra: Falls der eingebettete Dateiname nicht dem Dateinamen
  der verschl�sselten Datei entspricht wird erfragt, ob der
  eingebettete Dateiname verwendet werden soll.
  Dies funktioniert nur bei Dateien, die von GnuPG VS-Desktop
  3.1.24 oder sp�ter verschl�sselt wurden. (T6056)

- Kleopatra: Bei der Verifikation mit eigenst�ndigen Signaturdateien (.sig)
  wird nun gefragt, welche Datei verifiziert werden soll, falls
  Kleopatra dies nicht automatisch feststellen kann. (T6062)

- Kleopatra: Suchanfragen mit nur einem Zeichen sind nun erlaubt.
  Dies soll erleichtern, alle Zertifikate in einem Verzeichnis anzuzeigen.
  (T6064)

- Kleopatra: Wenn eine benutzerspezifische trustlist.txt erzeugt wird,
  wird nun das Schl�sselwort "include-default" hinzugef�gt, so dass die
  systemweite trustlist.txt zus�tzlich benutzt wird. (T6096)

- Kleopatra: Der Speicherort wird nun f�r jeden Unterschl�ssel einzeln
  angezeigt, um offline Unterschl�ssel und mehrere Smartcards
  besser zu unterst�tzen. (T6108)

- Kleopatra: Der Zertifikatsdetails-Dialog enth�lt nun einen
  expliziten "Aktualisieren" Button um das Zertifikat aus den
  konfigurierten Verzeichnisdiensten neu zu laden. (T5903)

- Kleopatra: Der Fingerabdruck mit der Dateiendung .rev wird nun
  als Dateiname f�r Widerrufszertifikate vorgeschlagen. (T6121)

- Kleopatra: Weitere Dateidialoge merken sich das zuletzt verwendete
  Verzeichnis. (T6121)

- Kleopatra: Beim Zur�ckziehen von Beglaubigungen werden nun
  automatisch die eigenen Beglaubigungen an dem Zertifikat ermittelt.
    (T6115)

--- Bug fixes ---

- GnuPG: YubiKeys ab der Firmware Version 5.4. werden nun wieder
  korrekt erkannt. (T6070)

- GnuPG: Die kombinierte symmetrische und asymmetrische
  Verschl�sselung wird nun als VS-NfD konform angezeigt, wenn
  die passenden Algorithmen verwendet werden. (T6119)

- GnuPG: Eine irref�hrende Fehlermeldung die auftrat, wenn ein
  Schl�ssel auf eine Smartcard �bertragen wurde, wurde
  ge�ndert. (T6122).

- GnuPG: Die Optionen "auto-key-import" und "include-key-block"
  sind nun wieder durch Kleopatra �nderbar. (T6138)

- GnuPG: Ein m�glicher "path traversal" Angriff wurde in
  "gpg-wks-server" behoben. Dieser betrifft nur Anwender des
  "gpg-wks-server" in einer WKS Installation. (T6098)

- GpgOL: An einige Stellen falsch angezeigte Sonderzeichen
  korrigiert.

- GpgOL: Die Absender Erkennung f�r Entw�rfe mit ge�nderter
  Absenderidentit�t funktioniert nun.

- GpgOL: Ein H�nger bzw. ein Performance Problem, das bei
  unverschl�sselten Mails mit einer gewissen Struktur auftreten
  konnte, wurde behoben. (#8917)

- GpgOL: Alte, tempor�re, Dateien die von GpgOL erstellt wurden werden
  nun entfernt um auf Systemen die das nicht selbst vornehmen keine
  �berf�llung zu produzieren. (T5926)

- Kleopatra: Meldet nun keinen Erfolg mehr, wenn eine leere
  Benutzerkennung hinzugef�gt wird. (T5997)

- Kleopatra: Die maximale Ablaufdatum von Zertifikaten ist nun
  2106-02-05. (T5991)

- Kleopatra: S/MIME Zertifikats-Hierarchien werden nicht mehr
  eingeklappt, wenn man ein Zertifikat per Doppelklick �ffnet.
  (T6055)

- Kleopatra: Kleine Verbesserungen bei der Empf�ngerauswahl f�r
  das verschl�sseln / signieren. (T6080)

- Kleopatra: Das Abbrechen der Passworteingabe bei der Erstellung
  einer Sicherungskopie des geheimen Schl�ssels funktioniert nun
  wie erwartet. (T6090)

- Kleopatra: Eine Gruppe von Abst�rzen, welche unmittelbar beim Start
  von Kleopatra auftreten konnten, wurde behoben.  In der Windows
  Ereignisanzeige erschienen diese als Abst�rze in libstdc++6.dll.
  (T6131)

- Kleopatra: Ein sehr seltener H�nger beim Archivieren von Dateien
  konnte behoben werden.  Dieser sorgte daf�r, dass Kleopatra das
  Archivieren von Dateien nie beendet hat. (T6139)

- Kleopatra: Wenn nur ein einzelnes OpenPGP Zertifikat importiert
  wird, wird nun wieder gefragt, ob dieses direkt beglaubigt werden
  soll. (T6144)

- Kleopatra: Die Probleme welche auftraten, wenn das TEMP
  Verzeichnis des Nutzers auf einer Microsoft Virtual
  Hard Disk lag, wurden behoben. (T6147)

--- Accessibility ---

- Kleopatra: Die folgenden Dialoge sind nun auch benutzbar:
  * nur mit der Tastatur
  * mit einem Screenreader (getestet NVDA und Orca)
  * mit 400% Vergr��erung
  * mit hohem Kontrast (T6073)
  * mit invertiertem Farbschema (T6073)

  - OpenPGP Zertifikats-Erstellung (T5969, T5832)
  - Die Werkzeugleiste im Hauptfenster (T6026)
  - Zertifikat Details (T5843)
  - Zertifikat beglaubigen (T6046)
  - G�ltigkeitsdauer �ndern (T6080)
  - Gruppen einrichten (T6095)
  - DN Attribut-Reihenfolge konfigurieren (T6089)
  - Unterschl�ssel-Details (T6104)
  - Beglaubigungsansicht (T6102)
  - Selbsttest (T6101)

- Kleopatra: Das Erstellen von OpenPGP Zertifikaten erfolgt nun
  mit einem einzigen Dialogfenster. (T5832)

- Kleopatra: Erstellen von S/MIME Beglaubigungsanfragen (CSR)
  ist nun eine alleinstehende Aktion im Datei Men�. (T5832)

- Kleopatra: Links innerhalb von Texten in Kleopatra sind nun
  auch f�r Screenreader geeignet. (T6034)

- Kleopatra: Texte in Kleopatra (Label) sind nun ausw�hlbar.
  Die Auswahl wird zudem hervorgehoben.  Dies macht es f�r
  Nutzer von Screenreadern einfacher, den passenden Text
  auszuw�hlen. (T6036)

- Kleopatra: Tooltips werden nun von Screenreadern gelesen.
  (T6044)

- Kleopatra: Reine Symbolkn�pfe sollten nun alle eine Beschreibung
  haben, die von Screenreadern verarbeitet werden kann. (T6088)

- Kleopatra: Die Keyboard-Navigation durch die Zertifikatsliste
  wurde verbessert. (T5841)

- Kleopatra: Die Beschreibung der G�ltigkeit eines Zertifikats
  wurde auf "G�ltig ab" bzw. "G�ltig bis" vereinheitlicht.
  (T6120)

- Kleopatra: Die Anzeige der Konformit�t wurde vereinfacht
  indem nicht mehr der Teil "Kommunikation ist m�glich"
  angef�gt wird. (T5855)

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
