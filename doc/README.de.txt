;; README.de.txt                             -*- coding: latin-1; -*-
;; This is the README installed with gpg4win (German version).  Lines
;; with a ; in the first column are considered a comment and not
;; included in the actually installed version.  Certain keywords are
;; replaced by the Makefile; those words are enclosed by exclamation
;; marks.

                  Deutsche README Datei for Gpg4Win
                  =================================
                                   
Dies ist GnuPG for Windows, Version !VERSION!.

Inhalt:

     1. Wichtige Hinweise
     2. �nderungen
     3. Versionsnummern
     4. Installer Optionen
     5. Rechtliche Hinweise




1. Wichtige Hinweise
====================

Informationen zur Benutzung sind den Handb�chern "Gpg4Win f�r
Einsteiger" und "Gpg4Win f�r Durchblicker" zu entnehmen.  Diese k�nnen
Sie auch, in einer m�glicherweise bereits �berarbeiteten Fassung,
online unter http://www.gpg4win.de lesen.




3. Liste der �nderungen an Gpg4Win
==================================

Eine aktuelle deutschsprachige �bersicht der �nderungen finden online
unter http://www.gpg4win.de/change-history-de.html .  Im weiteren
finden Sie die Eintr�ge aus der englischen NEWS Datei:

!NEWSFILE!




3. Versionsnummern der einzenen Bestandteile
============================================

Zur �bersicht sind hier die Pr�fsummen sowie die Namen der einzelnen
Bestandteile aufgelistet.  Sie finden dieselben Informationen auch in
der Datei versioninfo.txt.

!VERSIONINFO!




4. Installer Optionen
=====================

Hinweis: Dies ist eine kurze Zusammenfassung. Im Anhang des
Handbuches "Gpg4win f�r Einsteiger" findet sich ein �hnlicher Text
der ggf. f�r Anwender angepasst wurde.

In einigen F�llen wie zum Beispiel f�r Software-Verteilungssysteme ist
es hilfreich, wenn die Installation von Gpg4win ohne Dialoge funktioniert,
man aber trotzdem vorab alle Installationseinstellungen bestimmen kann.

Der Standard-Installationspfad kann mit der Option /D=PFAD angegeben
werden, welche als letzte auf der Kommandozeile erscheinen mu�.


Der Gpg4win Installer unterst�tzt die Option /S f�r automatischen Ablauf der
Installation, und die Option /C=INIFILE, durch welche eine Steuerungsdatei
(Name endet �blicherweise auf .ini) angegeben werden kann.
Diese Datei sollte genau einen Abschnitt "[gpg4win]" enthalten,
in der absolute Pfade f�r die zu installierenden Konfigurationsdateien
vorgegeben werden.

Hier ist eine Beispieldatei, die
zugleich alle erlaubten Schl�sselworte zeigt:

[gpg4win]
  ; Installer Einstellungen.
  ; Weg- oder leer-lassen bedeutet, dass die Voreinstellung
  ; verwendet wird.
  inst_gnupg2 = true
  inst_gpgol = true
  inst_gpa = true
  inst_winpt = true
  inst_gpgee = true
  inst_claws_mail = false
  inst_man_novice_de = true
  inst_man_novice_en = true
  inst_man_advanced_de = true
  inst_man_advanced_en = true

  ; Die Stellen, an denen Verkn�pfungen erzeugt werden sollen.
  inst_start_menu = true
  inst_desktop = false
  inst_quick_launch_bar = false

  ; Im Gegensatz zu den anderen Optionen �berschreibt diese Option die
  ; Einstellung des Benutzers im Installer.
  inst_start_menu_folder = GnuPG for Windows

  ; Standard-Konfigurationsdateien.
  gpg.conf = D:\config\gpg-site.conf
  gpg-agent.conf = D:\config\gpg-agent-site.conf
  trustlist.txt = D:\config\trustlist-site.txt
  dirmngr.conf = D:\config\dirmngr-site.conf
  dirmngr_ldapserver.conf = D:\config\dirmngr_ldapserver-site.conf
  scdaemon.conf = D:\config\scdaemon-site.txt
  gpa.conf = D:\config\gpa-site.conf

Ein entsprechender Aufruf zur automatichen Installation k�nnte also
wie folgt aussehen:

gpg4win.exe /S /C=C:\TEMP\gpg4win.ini /D=D:\Programme\Gpg4win


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

  Ihr Gpg4Win Team


*** Ende der Datei ***
