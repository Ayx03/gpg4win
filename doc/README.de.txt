;; README.de.txt                             -*- coding: latin-1; -*-
;; This is the README installed with Gpg4win (German version).  Lines
;; with a ; in the first column are considered a comment and not
;; included in the actually installed version.  Certain keywords are
;; replaced by the Makefile; those words are enclosed by exclamation
;; marks.

                  Deutsche README Datei f�r Gpg4win
                  =================================
!BETA-WARNING!
Dies ist Gpg4win, Version !VERSION! (!BUILD_ISODATE!).

Inhalt:

     1. Wichtige Hinweise
     2. �nderungen
     3. Bekannte Probleme (und Abhilfe)
     4. Installation
     5. Versionshistorie
     6. Versionsnummern der einzelnen Programmteile
     7. Rechtliche Hinweise


1. Wichtige Hinweise
====================

Hilfe bei der Installation und Benutzung von Gpg4win bietet Ihnen das
Gpg4win-Kompendium. Sie finden es nach der Installation im
Gpg4win-Startmen� unter 'Dokumentation' oder direkt online unter: 
http://www.gpg4win.de/doc/de/gpg4win-compendium.html

Falls Sie von Gpg4win 1.x oder einem andern Proramm auf Gpg4win 2.x
umsteigen wollen, beachten Sie bitte die Migrationshinweise im Anhang
des Gpg4win-Kompendiums:
http://www.gpg4win.de/doc/de/gpg4win-compendium_36.html

Bitte lesen Sie den Abschnitt "3. Bekannte Probleme (und Abhilfe)",
bevor Sie damit beginnen Gpg4win zu nutzen.

Gpg4win unterst�tzt folgende Plattformen:
  * Betriebssystem: Windows 2000, XP (32/64), Vista (32/64), 7 (32/64)
  * MS Outlook: 2003, 2007
  Wichtig: Das Explorer-Plugin 'GpgEX' bietet aktuell keine Unterst�tzung f�r
  64-bit Explorer! (Details unter Abschnitt 3, Punkt "Probleme unter Windows x64")


2. �nderungen
=============
[Die folgenden Fallnummern beziehen sich auf https://issues.kolab.org/.]

Die integrierten Gpg4win-Komponenten in Version !VERSION! sind:
    GnuPG:          2.0.17
    Kleopatra:      2.1.0 (2011-02-04)
    GPA:            0.9.1-svn1024
    GpgOL:          1.1.2
    GpgEX:          0.9.7
    Claws-Mail:     3.7.8cvs15
    Kompendium DE:  3.0.0
    Kompendium EN:  3.0.0-beta1

Neu in Gpg4win Version !VERSION! (!BUILD_ISODATE!):
------------------------------------------
- Kleopatra:
  * rekursives Signiern/Verschl�sseln von mehreren Dateien und
    Ordnern m�glich (siehe GnuPG-Backend)
  * Pr�fsummen 
    - Pr�fsummen erstellen/�berpr�fen (mittels sha1sum, sha256sum,
      md5sum) m�glich (siehe GnuPG-Backend)
    - Pr�fsummen erstellen f�r mehrere Dateien korrigiert 
      [kolab/issue4540]
    - Pr�fsummen erstellen/�berpr�fen �ber das Datei-Men� von Kleopatra erm�glicht 
      [kolab/issue4464]
    - Dialoge beim Erstellen/�berpr�fen vergr��ert 
      [kolab/issue4487]
  * Konfliktdialog 
    - Zertifikatsauswahldialog nun kontextsensitiv (abh�ngig ob signiert,
      verschl�sselt oder signiert/verschl�sselt gew�hlt wurde)
      [kolab/issue4492]
    - Konfliktf�lle neu definiert und implementiert, Fehler behoben
      [kolab/issue4197,4234]
    - neue Konfigurationsoption f�r den "schnellen Modus"
      (Viel-Benutzer-Modus) beim Signieren und Verschl�sseln
      [kolab/issue4136])
    - Kein extra Protokoll-Auswahldialog mehr erforderlich - Auswahl
      von OpenPGP und S/MIME nun �ber neuen Zertifikatsauswahldialog m�glich
      [kolab/issue4213,4235]
  * Zertifikatssuche auf Zertifiaktsserver
    - Suche nach Fingerabdruck oder Schl�sselkennung: 
      neuer Hinweisdialog (teiweise 0x-Pr�fix erforderlich)
      [kolab/issue4453]
  * Beglaubigen von OpenPGP-Zertifikaten
    - Fingerabdruck und Schl�sselkennung in Schritt 1 hinzugef�gt
      [kolab/issue4468,4458]
    - Schl�sselklennung in Schritt 2 hinzugef�gt
      [kolab/issue4460]
  * Diverse kleinere GUI-Verbesserungen
    - Kleopatras Hauptfenster: Spalte 'Fingerabdruck' durch 'Schl�sselkennung' ersetzt 
      [kolab/issue4542]
    - Schl�sselkennung konsistent 8-stellig darstellen
      [kolab/issue4659]
    - Datei-entschl�sseln/pr�fen-Dialoglayout optimiert
      [kolab/issue4662] 
    - Export eines geheimen X.509-Zertifikats verwendet nun utf8 als
      Vorgabe f�r Passphrase-Zeichensatz
      [kolab/issue4454]
    - Import eines Zeritifikats ohne Dateierweiterung verbessert
      (content checker)
      [kolab/issue4457]
    - Anzeigen von Zertifikaten im L�schen-Best�tigungsdialog
      korrigiert
      [kolab/issue4459] 
    - neuer Kontext-Men�eintrag zum L�schen von Zertifikaten
      [kolab/issue4450]
    - Vertrauen in den Zertifikatsinhaber/Benutzervertrauen nun in
      den Zertifikatsdetails sichbar
      [kolab/issue4198]
    - Zertifikatserstellung: Einheit (Bits) f�r Schl�ssell�nge auf
      �bersichtspr�fseite erg�nzt
      [kolab/issue4183]
    - E-Mail-Validator: L�schen von '@' Zeichen erlaubt
      [kolab/issue4189]
    - X.509-Wurzelzertifikate vertrauen/misstrauen per Kontextmen�
      erm�glicht (Schreiben von $GNUPGHOME\trustlist.txt)
      [kolab/issue4190]
    - F�r Entwickler: KDebugDialog verf�gbar (wird mit Kleopatra
      installiert, separat startbar unter $INSTDIR\kdebugdialog.exe)
      [kolab/issue4318]
    - Hierarchische Zertifikatsliste: Ein-/Ausschalten korrigiert
      [kolab/issue4327]
    - Fehler beim Entschl�sseln/Pr�fen einer speziellen S/MIME E-Mail
      korrigiert
      [kolab/issue4179]
  * Kleopatra-Einrichten-S/MIME-Dialog:
    - 'allow-mark-trusted' Option entfernt, wenn gnupg 'no-allow-mark-trusted'
      anbietet
  * SmartCard 
    - Initialisierung einer X.509-Karte in Kleopatra verbessert 
      [kolab/issue4519]
    - Blinkendes SystemTray Kleopatra-Icon beim Einlegen einer X.509
      SmartCard. Klick startet learncard Befehl bzw. Nullpin Dialog.
      [kolab/issue4191]
    - Learncard Befehl unterdr�ckt nun gpgsm Fehlerdialog
      [kolab/issue4126]
  * Diverses
    - Gpg4win-Credits hinzugef�gt (im '�ber Gpg4win'-Dialog)
    - DE: Deutsche �bersetzung angepasst
    - diverse kleinere Stabilit�ts- und GUI-Verbesserungen

- GnuPG-Backend:
  * aktualisiert auf gnupg 2.0.17
  * allow-mark-trusted aktiviert per Voreingestellung (no-allow-mark-trusted
    eingef�hrt) 
  * gpgme und libassuan aktualisiert (Anstieg von offenen Handles
    bei Kleopatra damit behoben, siehe [kolab/issue4705])
  * Automatischer Neustart des gpg-agent durch gpgconf korrigiert
    [kolab/issue4563]
  * bzip2 aktualisiert (von 1.0.4 auf 1.0.6)
  * Fehlercode f�r fehlende Zertifikate hinzugef�gt
  * (rekursives) Signiern/Verschl�sseln mit gpgtar
    [kolab/issue4298,4299,4300] 
  * Pr�fsummen erstellen/�berpr�fen (mittels sha1sum, sha256sum,
    md5sum) �ber GpgEX m�glich
    [kolab/issue41634,294,4295,4296,4297,4321]
  * Aktualisierung auf neues libassuan v2 Interface
  * Diverse Stabilit�tverbesserung 
    [u.a.: kolab/issue4212] 

- GpgEX
  * (rekursives) Signiern/Verschl�sseln von mehreren Dateien und
    Ordnern m�glich (siehe GnuPG-Backend)
  * Pr�fsummen erstellen/�berpr�fen (mittels sha1sum, sha256sum,
    md5sum) m�glich (siehe GnuPG-Backend)
  * portugiesische �bersetzung hinzugef�gt
  * aktualisiert auf libgpg-error 1.9

- GpgOL:
  * portugiesische �bersetzung hinzugef�gt
  * aktualisiert auf neues libassuan2 Interface und libgpg-error 1.9

- Pinentry:
  * Pinentry-qt4-H�nger beim E-Mail-Signieren behoben
    (aktualisiert von 0.8.0 auf 0.8.1)
    [kolab/issue4302]
  * Voreinstellung wieder umgestellt auf QT4 
    (f�r gpg4win-light-Installer weiterhin GTK aktiv)
    [kolab/issue4378]
  * DE: �bersetzung des Buttons 'Cancel' zu 'Abbrechen'
    [kolab/issue4132]

- Installer:
  * Installation von Dektop-Verkn�pfungen bei nicht-deutschsprachiger
    Installation korrigiert
  * Windows7-Unterst�tzung f�r Gpg4win
  * S/MIME-Konfigurationsanleitung hinzugef�gt
  * Englisches Kompendium v3.0.0-beta1 hinzugef�gt, altes Handbuch
    entfernt
  * Installer mit CodeSigning-Zertifikat von GlobalSign signiert
    (Herausgeber "Intevation GmbH")
  * portugiesische �bersetzung hinzugef�gt

- Claws:
  siehe http://www.claws-mail.org


3. Bekannte Probleme (und Abhilfe)
==================================

- Smartcard-Nutzung mit Kleopatra

   Die Einrichtung von Smartcards unter Kleopatra ist derzeit noch
   nicht vollst�ndig m�glich. Bitte f�hren Sie folgende Schritte
   einmalig durch, um Ihre Smartcard anschlie�end unter Kleopatra
   nutzen zu k�nnen.

   * OpenPGP Karte
     Verwenden Sie das gpg-Kommandozeilen-Werkzeug, um ein neues
     OpenPGP-Zertifikat auf Ihrer Karte zu erzeugen (a) oder Ihr
     vohandenes Zertifikat von Ihrer Karte zu aktivieren (b):

     (a) Neues Zertifikat erzeugen
       - Karte einlegen.
       - F�hren Sie "gpg --card-edit" auf der Kommandozeile aus.
       - Wechseln Sie in den Admin-Modus mit "admin".
       - Geben Sie "generate" ein und folgen Sie den Anweisungen, um
         ein neues Zertifiakt zu erzeugen.

     (b) Vorhandenes Zertifikat von der Karte aktivieren
       - Das (zu der Karte) zugeh�rige �ffentliche Zertifikat
         importieren (z.B. von einem Zertifikatsserver oder von einer
         vorher exportierten Zertifikatsdatei).
       - Karte einlegen.
       - F�hren Sie "gpg --card-status" auf der Kommandozeile aus.

   * X.509 Telesec Netkey 3 Karte
     Verwenden Sie Kleopatra, um Ihre Karte (einmalig) zu initialisieren:
     - Karte einlegen.
     - Auf das blinkende Kleopatra-Smartcard-Systemtray-Icon klicken
       (oder direkt das Systemtray-Kontextmen� "Smartcard" und dort
       den "LearnCard"-Eintrag aufrufen).

   Anschlie�end wird Ihr OpenPGP- bzw. X.509-Smartcard-Zertifikat in
   Kleopatra unter dem Reiter "Meine Zertifikate" angezeigt (markiert mit
   einem Smartcard-Icon).

- Verwendung der Outlook-Programmerweiterung "GpgOL":

  * Sie sollten unbedingt Sicherheitskopien Ihrer alten
    verschl�sselten/signierten E-Mails machen; z.B. in PST-Dateien!

  * Senden von signierten oder verschl�sselten Nachrichten �ber ein
    Exchange basiertes Konto funktioniert nicht.
    [siehe https://bugs.g10code.com/gnupg/issue1102]
    (Hinweis: Beim verwenden von SMTP sollte das Senden mit GpgOL funktionieren.)

  * Outlook2007 st�rzt beim �ffnen von Anh�ngen einer
    verschl�sselten Nachricht ab
    [siehe https://bugs.g10code.com/gnupg/issue1110]

  * Verschl�sselte E-Mails unverschl�sselt auf E-Mail-Server:
    Es kann vorkommen, dass Teile von verschl�sselten E-Mails
    in entschl�sselter/unverschl�sselter Form auf dem E-Mail-Server
    (IMAP oder MAPI) zu liegen kommen, wenn man sie erstellt/liest.
    Betroffen sind nur der Inhalt des Anzeigefensters von Outlook,
    also der "E-Mail-Body".  Anh�nge sind nicht betroffen.
    Schaltet man die Voransicht von Outlook ab, so
    verringert sich die Wahrscheinlichkeit daf�r deutlich,
    aber es kann trotzdem noch passieren.
    Eine L�sung hierf�r ist in Arbeit.

- Verwendung von GpgEX:

   * Es kann teilweise vorkommen, dass beim Versuch Dateien mit GpgEX
     aus dem Explorer zu signieren/verschl�sseln bzw. zu entschl�sseln/pr�fen,
     Kleopatra und das aktive Explorerfenster nicht mehr reagiert.
     Sie sollten Kleopatra dann �ber den Task-Manager beendet und die
     Datei-Krypto-Opteration nicht �ber GpgEX sondern direkt �ber
     Kleopatra (per Datei-Men�) ausf�hren.

   * Probleme unter Windows x64:
     GpgEX ist eine (32bit) Erweiterung f�r den (32bit) Windows
     Explorer und l�uft _nicht_ in einem 64bit Explorer
     (= voreingestellter Explorer in einem Windows 64bit System).

     Abhilfe: Starten Sie den 32bit Explorer, um GpgEX nutzen zu k�nnen.
     Klicken Sie auf "Start" -> "Ausf�hren" und geben Sie folgenden
     Befehl ein:
        C:\windows\syswow64\explorer.exe /separate
     Beachten Sie, dass Sie ggf. den Pfad zu Ihrer x64-basierten 
     Version von Windows anpassen m�ssen.
     Dieser 'separate'-Aufruf ist aktuell in Windows7/64bit defekt.
     Alternativ k�nnen Sie die Datei-Krypto-Operationen von GpgEX
     auch direkt �ber das Datei-Men� von Kleopatra erreichen.
 

4. Installation
===============

Eine Anleitung zur Installation von Gpg4win finden Sie im Gpg4win-Kompendium:
http://www.gpg4win.de/doc/de/gpg4win-compendium_11.html

Hinweise zur automatisierten Installation (ohne Benutzerdialoge)
finden Sie im Anhang des Gpg4win-Komendiums:
http://www.gpg4win.de/doc/de/gpg4win-compendium_35.html


5. Versionshistorie
===================

Eine aktuelle deutschsprachige �bersicht der �nderungen finden Sie online
unter http://www.gpg4win.de/change-history-de.html .  Im weiteren
finden Sie die Eintr�ge aus der englischen NEWS Datei:

!NEWSFILE!


6. Versionsnummern der einzelnen Programmteile
==============================================

Zur �bersicht sind hier die Pr�fsummen sowie die Namen der einzelnen
Bestandteile aufgelistet. 

!VERSIONINFO!


7. Rechtliche Hinweise zu den einzelnen Bestandteilen der Software
==================================================================

Gpw4win besteht aus einer ganzen Reihe von unabh�ngig entwickelten
Packeten, die teilweise unterschiedliche Lizenzen haben.  Der Gro�teil
dieser Software ist, wie Gpg4win selbst, steht unter der GNU General
Public License (GNU GPL).  Gemeinsam ist allen, da� die Software ohne
Restriktionen benutzt werden kann, ver�ndert werden darf und
�nderungen weitergeben d�rfen.  Wenn die Quelltexte (also
gpg4win-x.y.z.tar.bz2) mit weitergegeben werden und auf die die GNU
GPL hingewiesen wird, ist die Weitergabe in jedem Fall m�glich.

Zur �bersicht folgt eine Liste der Copyright Erkl�rungen.


!PKG-COPYRIGHT!




Frohes GiPiGien,

  Ihr Gpg4win Team


*** Ende der Datei ***
