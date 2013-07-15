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

  * Betriebssystem: Windows XP (32/64), Vista (32/64), 7 (32/64)

  * MS Outlook: 2003, 2007, 2010


2. �nderungen
=============

Die integrierten Gpg4win-Komponenten in Version !VERSION! sind:

!COMPONENTS!


Neu in Gpg4win Version !VERSION! (!BUILD_ISODATE!)
-------------------------------------------------
- GpgEx
  * Jetzt endlich mit Unterst�tzung f�r Windows 64 bit!

- GpgOL:
  * Rudiment�re Outlook 2010 Unterst�tzung (Entwicklungsversion). 
    Folgende Krypto-Operationen sind bereits �ber das neue
    GpgOL-Ribbon bzw. �ber das Kontextmen� von Outlook 2010 m�glich
    (kein MIME-Parsing):
     - Verschl�sseln/Entschl�sseln des Mail-Bodys
     - Speichern und Entschl�sseln von Anh�ngen
    Folgende Funktionen sind noch geplant:
    - Signieren/Pr�fen
    - Dateien anh�ngen und verschl�sseln (Anh�nge m�ssen derzeit noch 
      separat �ber z.B. Kleopatra verschl�sselt werden)
  * GpgOL f�r Outlook 2003 und 2007 sind von diesen �nderungen unber�hrt.
  
- Kleopatra:
  * Crash beim Start von Kleopatra durch normalen Nutzer auf Terminalserver 
    Systemen (Windows Server) behoben.
 
- Pinentry:
  * Einf�gen von Passphrasen aus der Zwischenablage ist nun erlaubt.

- GnuPG-Backend:
  * Gpg-agent kann nun als Pageant (PuTTY authentication agent) Ersatz
    genutzt werden - mit zus�tzlicher SmartCard-Unterst�tzung.

- Installer:
  * Lizenzseite aktualisiert
  * SMIME-HOWTO-Seite entfernt (noch zu finden im Men� Programme > Gpg4win)


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
    (Hinweis: Beim verwenden von SMTP sollte das Senden
     mit GpgOL funktionieren.)

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


4. Installation
===============

Eine Anleitung zur Installation von Gpg4win finden Sie im Gpg4win-Kompendium:
http://www.gpg4win.de/doc/de/gpg4win-compendium_11.html

Hinweise zur automatisierten Installation (ohne Benutzerdialoge)
finden Sie im Anhang des Gpg4win-Komendiums:
http://www.gpg4win.de/doc/de/gpg4win-compendium_35.html


5. Versionsgeschichte
=====================

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

Gpg4win besteht aus einer ganzen Reihe von unabh�ngig entwickelten
Packeten, die teilweise unterschiedliche Lizenzen haben.  Der Gro�teil
dieser Software ist, wie Gpg4win selbst, steht unter der GNU General
Public License (GNU GPL).  Gemeinsam ist, dass die Software ohne
Restriktionen benutzt werden kann, ver�ndert werden darf und
�nderungen weitergeben d�rfen.  Wenn die Quelltexte (also
gpg4win-x.y.z.tar.bz2) mit weitergegeben werden und auf die die GNU
GPL hingewiesen wird, ist die Weitergabe in jedem Fall m�glich.

Zur �bersicht folgt eine Liste der Copyright Erkl�rungen.


!PKG-COPYRIGHT!




Viel Erfolg,

  Ihr Gpg4win Team


*** Ende der Datei ***
