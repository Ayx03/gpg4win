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

-  GnuPG: Im VS-NfD Modus wird jetzt AES-128 ansatt 3-DES als
   implizierter Verschl�sselungsalgorithmus verwendet.  Dies
   vermeidet Probleme mit Software, die 3-DES als nicht nicht
   konform ansieht obgleich sie lediglich 3-DES als unterst�tzen
   Algorithmus publiziert.   [T6063]

-  GnuPG: Eine neues LDAP Server Flag "areconly" (A-record-only)
   kann benutzt werden, um lange Verz�gerungen auf einigen AD
   Installationen zu vermeiden.

-  GnuPG: Ein neues Feature erm�glicht das spiegeln der Schl�ssel
   eines internen LDAP Keyservers auf ein Web Key Directory.
   [T6224]

-  GnuPG: Die Ausgabe von Fehlern f�r falsche Passw�rter beim Import
   von PKCS#11 Daten wurde verbessert.  [T5713,T6037]

--- Bug fixes ---

-  GnuPG: Die X.509/CMS Parser DLL Libksba wurde auf Version
   1.6.2 aktualisiert um eine ein gravierendes Sicherheitsproblem zu
   beheben.  [T6230]

-  GnuPG: Unbekannte Schl�ssel werden w�hrend der Entschl�sselung
   nicht mehr als nicht-konform angesehen.  [T6205]

-  GnuPG: Der R�ckgriff auf andere CRL Distribution Points im
   Fehlerfall wurde verbessert.

-  GnuPG: Das Hochladen von mehreren Schl�sseln auf LDAP Server, die
   im "colon" Format konfiguriert sind, funktioniert jetzt.

-  GnuPG: Das Hochladen von Schl�sseln auf einen LDAP Server, mit
   konfigurierter BaseDN, funktioniert jetzt.  [T6047]


3. Hinweise
===========

- GpgOL

  * Crypto E-Mails, die als Anhang weitergeleitet wurden,
    werden nicht verarbeitet.

  * Integrierte Microsoft spezifische OLE Objekte sind nicht
    unterst�tzt.

  * Als weitere Sprachen sind nur Englisch, Niederl�ndisch
    und Portugiesisch verf�gbar.



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
