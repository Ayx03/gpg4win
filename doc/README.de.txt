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
     3. Bekannte Probleme (und Abhilfen)
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

Bitte lesen Sie den Abschnitt "3. Bekannte Probleme (und Abhilfen)"
dieses READMEs, bevor Sie beginnen Gpg4win zu nutzen.

Gpg4win unterst�tzt folgende Plattformen:

  * Betriebssystem: Windows XP und neuere Versionen (f�r alle: 32/64 bit)

  * MS Outlook: 2003, 2007, 2010, 2013, 2016 (2010 und sp�tere auch in 64bit)


2. �nderungen
=============

Die integrierten Gpg4win-Komponenten in Version !VERSION! sind:

!COMPONENTS!


Neu in Gpg4win Version !VERSION! (!BUILD_ISODATE!)
-----------------------------------------

- GpgOL: Eine Ursache f�r augenscheinlich zuf�llige Abst�rze
  von Outlook wurde beseitigt.

- GpgOL: Ein Absturz wenn Empf�nger �ber einf�gen hinzugef�gt
  wurden ist behoben.

- GpgOL: Verschiedene Probleme mit S/MIME mails wurden behoben.

- GpgOL: Ein Benutzerschnittstellen-Fehler in Outlook 2010 wurde
  behoben.

- Kleopatra: Various problems regarding S/MIME File operations
  have been fixed.

- Kleopatra: Various problems regading folder operations and
  archives have been fixed.

- GnuPG: Wurde auf Version 2.2.2 aktualisiert.

- Weitere kleine Fehlerkorrketuren und Verbesserungen.

- Der mkportable Prozess kann wieder verwendet werden um einen
  portable Gpg4win variante zu erstellen.

3. Anmerkungen
==============

- Allgemein

  * F�r Version 3.0 planen wir eine einfache M�glichkeit zu bieten in einen
    automatisierten Modus zu wechseln. Dies wird die folgenden GnuPG Optionen
    setzen:

        auto-key-locate wkd
        auto-key-retrieve
        trust-model tofu+pgp

    Da das neue Vertrauensmodell noch nicht so wie wir uns das w�nschen in
    Kleopatra behandelt wird (insbesondere bez�glich Dateisignaturen) wird
    dies noch nicht angeboten.

    Sie k�nnen die Optionen manuell in der gpg.conf setzen. Das neue
    Vertrauensmodell wird von GpgOL bereits unterst�tzt.

- GpgOL

  * Es ist nicht m�glich E-Mails zu ver�ndern (z.B. sie zu verschieben oder
    Flaggen zu setzen) w�hrend diese entschl�sselt betrachtet werden.
    Um dies zu umgehen schlie�en Sie die entsprechende Mail oder w�hlen
    Sie ab und modifzieren / verschieben diese dann �ber Rechtsklick oder
    Drag & Drop.

  * Crypto E-Mails, die als Anhang weitergeleitet wurden, werden nicht verarbeitet.

  * Der Zertifikatsauswahldialog �ffnet sich teilweise im Hintergrund und bedarf
    insgesamt einer �berarbeitung.

- GpgOL f�r Outlook 2003 und 2007

  Outlook 2003 und 2007 Support is abgek�ndigt und wird in einer zukunftige
  Version vollst�ndig entfernt werden.

  * Sie sollten unbedingt vor der Installation von GpgOL
    Sicherheitskopien Ihrer alten verschl�sselten/signierten E-Mails
    erstellen, z.B. in PST-Dateien!

  * Nur f�r Outlook 2003/2007:
    Senden von signierten oder verschl�sselten Nachrichten �ber ein
    Exchange-basiertes Konto funktioniert nicht.
    [siehe https://bugs.g10code.com/gnupg/issue1102]
    (Hinweis: Beim Verwenden von SMTP sollte das Senden
     mit GpgOL funktionieren. Oder Sie nutzen GpgOL mit Outlook
    2010/2013.)

  * Nur f�r Outlook 2003/2007:
    Verschl�sselte E-Mails unverschl�sselt auf E-Mail-Server:
    Es kann vorkommen, dass Teile von verschl�sselten E-Mails
    in entschl�sselter/unverschl�sselter Form auf dem E-Mail-Server
    (IMAP oder MAPI) zu liegen kommen, wenn man sie erstellt/liest.
    Betroffen sind nur der Inhalt des Anzeigefensters von Outlook,
    also der "E-Mail-Body".  Anh�nge sind nicht betroffen.
    Schaltet man die Voransicht von Outlook ab, so
    verringert sich die Wahrscheinlichkeit daf�r deutlich,
    aber es kann trotzdem noch passieren. Oder Sie nutzen GpgOl mit
    Outlook 2010/2013.


4. Installation
===============

Eine Anleitung zur Installation von Gpg4win finden Sie im Gpg4win-Kompendium:
https://files.gpg4win.org/doc/gpg4win-compendium-de.pdf

Hinweise zur automatisierten Installation (ohne Benutzerdialoge)
finden Sie im Anhang des Gpg4win-Komendiums:
https://files.gpg4win.org/doc/gpg4win-compendium-de.pdf

5. Versionsgeschichte
=====================

Eine aktuelle deutschsprachige �bersicht der �nderungen finden Sie online
unter: http://www.gpg4win.de/change-history-de.html
Im weiteren finden Sie die Eintr�ge aus der englischen NEWS-Datei:

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
