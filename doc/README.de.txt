;; README.de.txt                             -*- coding: latin-1; -*-
;; This is the README installed with Gpg4win (German version).  Lines
;; with a ; in the first column are considered a comment and not
;; included in the actually installed version.  Certain keywords are
;; replaced by the Makefile; those words are enclosed by exclamation
;; marks.

                  Deutsche README Datei f�r Gpg4win
                  =================================
                                   
Dies ist Gpg4win, Version !VERSION!.

Inhalt:

     1. Wichtige Hinweise
     2. �nderungen
     3. Bekannte Probleme (und Abhilfe)
     4. Versionshistorie
     5. Versionsnummern der einzelnen Programmteile
     6. Installer Optionen
     7. Rechtliche Hinweise


1. Wichtige Hinweise
====================

Hilfe bei der Benutzung von Gpg4win bietet Ihnen das
Gpg4win-Kompendium. Sie finden es nach der Installation von
Gpg4win2 im Gpg4win-Startmen� unter 'Dokumentation' oder
(in aktueller Fassung) direkt online unter http://www.gpg4win.de.

Falls Sie eine �ltere Version von Gpg4win benutzt haben, beachten Sie
bitte die Migrationshinweise im Anhang des Gpg4win-Kompendiums.

Bitte lesen Sie den Abschnitt "Bekannte Probleme", bevor Sie damit
beginnen Gpg4win zu nutzen.


2. �nderungen
=============

Gpg4win2 bringt gro�e �nderungen im Vergleich zu Gpg4win 1.x mit
sich. Nachstehend die wichtigsten �nderungen:

- Kleopatra ist der neue Zertifikatsmanager.  Kleopatra ist der
  bisherige S/MIME Zertifikatsmanager von KDE (eine auf vielen
  GNU/Linux-Systemen benutzte Arbeitsumgebung).  F�r die Verwendung
  in Gpg4win ist Kleopatra um die Unterst�tzung von OpenPGP und eine
  vereinheitlichte grafische Oberfl�che f�r alle kryptografischen 
  Operationen erweitert worden.  Kleopatra l�uft in der Regel
  permanent als Dienst (siehe Icon im System-Tray), sobald dessen
  Dienste einmal im Verlauf der Sitzung abgefragt wurden.
  Die Funktionalit�ten von WinPT werden nun durch Kleopatra
  abgedeckt. WinPT wurde aus Gpg4win2 entfernt.

- GpgEX ist die neue Programmerweiterung f�r den Microsoft Explorer
  und ersetzt GpgEE.

- Das E-Mail-Programm Claws Mail wurde auf eine modernere Version
  aktualisiert und unterst�tzt nun SSL, NNTP und IMAP.

- GpgOL, die Programmerweiterung f�r Outlook 2003 und 2007, wurde
  umfassend �berarbeitet.  Es unterst�tzt nun PGP/MIME und macht
  damit die Verwendung von verschl�sselten und signierten Anh�ngen
  viel einfacher und standardkonformer.  Die Unterst�tzung von S/MIME
  wurde erg�nzt.  F�r die grafischen Benutzerdialoge aller Krypto-
  Operationen wird nun Kleopatra verwendet.

- Das "Gpg4win-Kompendium" ist die neue deutschsprachige Dokumentation
  zu Gpg4win. Es vereinigt die alten Handb�cher "Einsteiger" und
  "Durchblicker".  Desweiteren wurden s�mtliche Kapitel f�r Gpg4win
  Version 2.0 aktualisiert, also unter anderem angepasst auf
  Kleopatra, GpgEX und PGP/MIME sowie erg�nzt um S/MIME bzw. X.509.

- Unterst�tzung folgender Plattformen:
  Betriebssystem: Windows 2000, XP (32/64), Vista (32/64)
  MS Outlook: 2003, 2007


3. Bekannte Probleme (und Abhilfe)
==================================

- Smartcard-Nutzung mit Kleopatra...

   * ... und einer OpenPGP Karte:
     Verwenden Sie das gpg-Kommandozeilen-Werkzeug, um ein neues
     OpenPGP-Zertifikat auf Ihrer Karte zu erzeugen.
     - Karte einlegen.
     - F�hren Sie "gpg --card-edit" aus.
     - Wechseln Sie in den Admin-Modus mit "admin".
     - Geben Sie "generate" ein und folgen Sie den Anweisungen, um
       ein neues Zertifiakt zu erzeugen.
     Anschlie�end wird Ihr neues Zertifikat in Kleopatra angezeigt
     (markiert mit einem Smartcard Icon).

   * ... und einer Telesec Netkey 3 Karte:
     Verwenden Sie das gpgsm-Kommandozeilen-Werkzeug, um Ihre Karte
     (einmalig) zu initialisieren.
     - Karte einlegen.
     - F�hren Sie "gpgsm --learn-card" aus.
     Anschlie�end werden Ihr Zertifiakte von Ihrer Karte in Kleopatra
     angezeigt (markiert mit einem Smartcard Icon).

   Eine gute (grafische) Alternative ist GPA um Ihre Karte korrekt zu
   konfigurieren und ggf. Ihre PIN zu �ndern.

- Verwendung der Outlook-Programmerweiterung "GpgOL":

  * Sie sollten unbedingt Sicherheitskopien Ihrer alten
    verschl�sselten/signierten E-Mails machen; z.B. in PST-Dateien!

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

  * Senden von signierten oder verschl�sselten Nachrichten �ber ein
    Exchange basiertes Konto funktioniert nicht.

- Verwendung von GpgEX unter Windows x64:

   * GpgEX ist eine (32bit) Erweiterung f�r den (32bit) Windows
     Explorer und l�uft _nicht_ in einem 64bit Explorer
     (= voreingestellter Explorer in einem Windows 64bit System).

     Abhilfe: Starten Sie den 32bit Explorer, um GpgEX nutzen zu k�nnen.
     Klicken Sie auf "Start" -> "Ausf�hren" und geben Sie folgenden
     Befehl ein:
         C:\windows\syswow64\explorer.exe /separate
     Beachten Sie, dass Sie ggf. den Pfad zu Ihrer x64-basierten 
     Version von Windows anpassen m�ssen.


4. Versionshistorie
===================

Eine aktuelle deutschsprachige �bersicht der �nderungen finden Sie online
unter http://www.gpg4win.de/change-history-de.html .  Im weiteren
finden Sie die Eintr�ge aus der englischen NEWS Datei:

!NEWSFILE!


5. Versionsnummern der einzelnen Programmteile
==============================================

Zur �bersicht sind hier die Pr�fsummen sowie die Namen der einzelnen
Bestandteile aufgelistet.  Sie finden dieselben Informationen auch in
der Datei versioninfo.txt.

!VERSIONINFO!


6. Installer Optionen
=====================

Hinweis: Dies ist eine kurze Zusammenfassung. Beachten Sie bitte
auch die Hinweise zur Automatischen Installation im Anhang des
Gpg4win-Kompendiums.

In einigen F�llen (wie zum Beispiel f�r Software-Verteilungssysteme)
ist es hilfreich, wenn die Installation von Gpg4win ohne Dialoge
funktioniert, man aber trotzdem vorab alle Installationseinstellungen
bestimmen kann.

Der Standard-Installationspfad kann mit der Option /D=PFAD angegeben
werden, welche als letzte auf der Kommandozeile erscheinen mu�.

Der Gpg4win Installer unterst�tzt die Option /S f�r automatischen
Ablauf der Installation, und die Option /C=INIFILE, durch welche eine
Steuerungsdatei (Name endet �blicherweise auf .ini) angegeben werden
kann.  Diese Datei sollte genau einen Abschnitt "[gpg4win]"
enthalten, in der absolute Pfade f�r die zu installierenden
Konfigurationsdateien vorgegeben werden.

Hier ist eine Beispieldatei, die zugleich alle erlaubten
Schl�sselworte zeigt: 

[gpg4win]
  ; Installationseinstellungen. Weg- oder leerlassen f�r 
  ; Voreinstellung
  inst_gpgol = true
  inst_gpgex = true
  inst_kleopatra = true
  inst_gpa = true
  inst_claws_mail = false
  inst_compendium_de = true
  inst_man_novice_en = true

  ; Die Stellen, an denen Verkn�pfungen erzeugt werden sollen.
  inst_start_menu = true
  inst_desktop = false
  inst_quick_launch_bar = false

  ; Im Gegensatz zu den anderen Optionen �berschreibt diese Option
  ; die Einstellung des Benutzers im Installationsassistenten.
  inst_start_menu_folder = Gpg4win

  ; Standard-Konfigurationsdateien.
  gpg.conf = D:\config\gpg-site.conf
  gpg-agent.conf = D:\config\gpg-agent-site.conf
  trustlist.txt = D:\config\trustlist-site.txt
  dirmngr.conf = D:\config\dirmngr-site.conf
  dirmngr_ldapserver.conf = D:\config\dirmngr_ldapserver-site.conf
  scdaemon.conf = D:\config\scdaemon-site.txt
  gpa.conf = D:\config\gpa-site.conf

Ein entsprechender Aufruf zur automatischen Installation k�nnte also
wie folgt aussehen:

gpg4win.exe /S /C=C:\TEMP\gpg4win.ini /D=D:\Programme\Gpg4win

F�r den MSI installer gilt entsprechendes, mit folgenden �nderungen:
Automatischer Ablauf wird wie �blich mit der Option /qb- zu msiexec
erreicht.  Die Steuerungsdatei muss gpg4win.ini hei�en und im
Systemverzeichnis (C:\WINDOWS) vorliegen.  Der Installationspfad kann
mit dem Eintrag "instdir" festgelegt werden.  Ausserdem k�nnen die
Einstellungen auch auf der Kommandozeile mittels INSTDIR=... und
INST_GPA=FALSE etc. angegeben werden (die Steuerungsdatei geht
allerdings vor).  Die Angabe von Standard-Konfigurationsdateien, sowie
die Angabe des Start Menu Verzeichnisses und die optionale Auswahl der
Verkn�pfungen wird vom MSI installer momentan nicht unterst�tzt.


5. Rechtliche Hinweise zu den einzelnen Bestandteilen der Software
==================================================================

Gpw4win besteht aus einer ganzen Reihe von unabh�ngig entwickelten
Packeten, die teilweise unterschiedliche Lizenzen haben.  Der Gro�teil
dieser Software ist, wie Gpg4win selbst, steht unter der GNU General
Public License (GNU GPL).  Gemeinsam ist allen, da� die Software ohne
Restriktionen benutzt werden kann, ver�ndert werden darf und
�nderungen weitergeben d�rfen.  Wenn die Quelltexte (also
gpg4win-src-x.y.z.exe) mit weitergegeben werden und auf die die GNU
GPL hingewiesen wird, ist die Weitergabe in jedem Fall m�glich.

Zur �bersicht folgt eine Liste der Copyright Erkl�rungen.


!PKG-COPYRIGHT!




Frohes GiPiGien,

  Ihr Gpg4win Team


*** Ende der Datei ***
