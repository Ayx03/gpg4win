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

- Es wird nun die moderne 2.2 Variante von GnuPG verwendet. Unter:
  https://www.gnupg.org/faq/whats-new-in-2.1.html (englisch)
  finden sich mehr details dazu.

- GpgOL f�r Outlook 2010 und sp�tere Versionen verwendet nun
  Schaltkn�pfe zur Auswahl, ob eine Mail verschl�sselt und/oder
  signiert sein soll. Die Operation erfolgt w�hrend des Versendens,
  dabei werden auch alle Anh�nge mitverschl�sselt und ein
  standardisiertes Format (MIME) verwendet.

- GpgOL f�r Outlook 2010 und sp�tere Versionen entschl�sselt nun
  wieder automatisch Mails.

- Alle 68 KDE-�bersetzungen von Kleopatra werden nun mit Gpg4win
  installiert.

- Kleopatra verwendet ein aktualisertes Icon-Set.

- Kleopatra zeigt nun die verwendete Kurve f�r ECC-Schl�ssel in den
  technischen Details an.

- Die von Kleopatra verwendeten Programmbibliotheken wurden aktualisiert.

- Ausf�hrbare Anwendungen werden nun in einem Unterordner abgelegt. Die
  Hilfsanwendungen DBus und kbuildsycoca werden nicht mehr ben�tigt.
  Dies l�st eine Reihe von Startproblemen von Kleopatra, die bei manchen
  Anwendern aufgetreten sind.

- Nach dem Import eines geheimen Schl�ssels bietet Kleopatra nun direkt
  an, diesen Schl�ssel zu markieren (sogenanntes "Inhabervertrauen").

- Kleopatra bietet nun in den erweiterten Optionen bei der
  Schl�sselerstellung an ECC-Schl�ssel zu erstellen.

- Kleopatra bietet nun die Option einen privaten Schl�ssel mit Paperkey zu drucken.

- Es ist nun auch m�glich �ber Kleopatras Dateimen� Ordner zu verschl�sseln.

- GPA und Kleopatra werden nun als Anwendungen f�r OpenPGP- und S/MIME-Dateiendungen in
  Windows registriert.

- Der Dateiverschl�sselungsdialog von Kleopatra wurde neu entworfen, um weniger
  Schritte zu enthalten und die Nutzererfahrung zu verbessern.

- Kleopatra erkennt nun automatisch, um welchen Dateityp es sich handelt und startet
  die entsprechende Aktion (z.B. entschl�sseln) automatisch.

- Symmetrische (nur mit Passwort) Verschl�sselung kann nun auch �ber Kleopatra
  durchgef�hrt und mit Public-Key-Verschl�sselung kombiniert werden.

- Pinentry erlaubt es nun die eingegebene Passphrase anzuzeigen.

- Kleopatra unterst�tzt nun die Verwaltung von OpenPGP-Smartcards.

- GpgOL f�r Outlook 2010 und sp�tere Versionen hat ein neues
  Benutzerinterface, um den kryptografischen Status direkt im E-Mail-Fenster
  anzuzeigen.

- GnuPG unterst�tzt nun https und verwendet standardm��ig den
  https sks-keyserver pool.

- GpgOL unterst�tzt nun das Senden und Empfangen von HTML-E-Mails.

- Kleopatra hat nun verbesserte Nachrichten beim �berpr�fen von
  Dateien.

- Kleopatra erlaubt es einem nun direkt fehlendene Zertifikate
  beim Datei�berpr�fen zu importieren.

- Viele Fehlerbehebungen und kleinere Verbesserungen.


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
