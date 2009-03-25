Wichtige Informationen zum Einsatz von Gpg4win 1.9-BETA
#######################################################

  Achtung: Dies ist eine BETA-Version von Gpg4win.
  Das bedeutet, dass der Funktionsumfang an einigen
  Stellen nicht vollst�ndig implementiert ist oder auch
  noch Fehler vorliegen k�nnen.

  Eine BETA-Version dient dem Test durch erfahrene
  Anwender oder Administratoren um die k�nftige
  neue Version kennenzulernen und Verbesserungsvorschl�ge
  einzubringen.

Stand: Gpg4win-1.9.15 (20090325)

Hier finden sich wichtige Informationen die bei der
Entscheidung helfen sollen, ob Gpg4win 1.9 schon f�r
die individuellen Bed�rfnisse ausreicht und einen
Beta-Test sinnvoll erscheinen l��t oder aber ob
Gpg4win 1.9 noch nicht weit genug daf�r ist.

Ausserdem wird ein Ausblick gegeben, was mit
Gpg4win 2.0 an neuer Funktionalit�t zu erwarten ist.
Die 1.9er Versionen sind der Beta-Test-Zyklus. Ist er
abgeschlossen wird Version 2.0 freigegeben.

�nderungsinformationen gegen�ber den vorherigen
Beta-Versionen finden sich am Ende dieses Dokumentes.

Hilfe bei der Benutzung von Gpg4win bietet Ihnen
das Gpg4win-Kompendium. Sie finden es nach der
Installation von Gpg4win-1.9.x im Gpg4win-Startmen�
unter 'Dokumentation' oder direkt online unter:

  http://gpg4win.de/handbuecher/gpg4win-compendium-de.html


R�ckmeldung erw�nscht!
  Bitte lassen Sie uns wissen ob sie Gpg4win 1.9
  erfolgreich getestet haben oder auch ob Sie auch
  Probleme (und welcher Gestalt) Sie getroffen sind.
  Am besten auf der deutschen Anwender Mailing Liste
  einschreiben und Berichte dorthin senden bzw. die
  Berichte der anderen lesen:

  http://lists.wald.intevation.org/mailman/listinfo/gpg4win-users-de


Inhalt dieses Dokumentes:

* Wichtige Hinweise zur vorliegenden Version
* Migration
* Wichtigste �nderungen von Gpg4win 1.9 gegen�ber 1.1
* Wichtigste �nderungen von Gpg4win 1.9.15 gegen�ber 1.9.14


Wichtige Hinweise zur vorliegenden Version
==========================================

- Installationpaket ca. 45 MByte:
  Das Paket ist noch nicht bzgl. Gr��e optimiert.
  Es wird angestrebt den Umfang mit der Zeit zu reduzieren.

- Verwendung von Outlook Plugin "GpgOL":

  * Sie sollten unbedingt Sicherheitskopien Ihrer alten
    verschl�sselten/signierten E-Mails machen; z.B. in PST-Dateien!

  * Verschl�sselte E-Mails unverschl�sselt auf E-Mail-Server:
    Es kann vorkommen, dass Teile von verschl�sselten E-Mails
    in entschl�sselter/unverschl�sselter Form auf dem E-Mail-Server
    (IMAP oder MAPI) zu liegen kommen, wenn man sie erstellt/liest.
    Betroffen sind nur der Inhalt des Anzeigefensters von Outlook,
    also der "E-Mail-Body". Anh�nge sind nicht betroffen.
    Schaltet man die Voransicht von Outlook ab, so
    verringert sich die Wahrscheinlichkeit daf�r deutlich,
    aber es kann trotzdem noch passieren.
    Eine L�sung hierf�r ist in Arbeit.


Migration
=========

* Von einer �lteren Gpg4win 1.9er Version:

  Ist eine alte Gpg4win-1.9.x Version vorher installiert
  gewesen, deinstallieren Sie diese bitte, bevor Sie die neue
  Gpg4win-Version installieren.

  Starten Sie Ihr System neu, sofern Sie nach der Installation dazu 
  aufgefordert werden. Andernfalls wird es zwangsl�ufig 
  zu Fehlfunktionen bei Verschl�sselungsoperationen kommen.

* Von einer Gpg4win 1.X  oder sonstigen GnuPG Version:

  Es wird dingend empfohlen zun�chst Gpg4win-1.x zu
  deinstallieren bevor anschlie�end Gpg4win-2.0.0 installiert wird.

  Starten Sie Ihr System neu, sofern Sie nach der Installation dazu 
  aufgefordert werden. Andernfalls wird es zwangsl�ufig 
  zu Fehlfunktionen bei Verschl�sselungsoperationen kommen.

Beachten Sie auch die Migrationshinweise im Anhang des Gpg4win Kompendiums.


Wichtigste �nderungen von Gpg4win 1.9 gegen�ber 1.1
===================================================

Entfallen:
----------

- GpgEE: Dieses Modul wird ersetzt durch GpgEX (siehe unten)

- WinPT: Die Funktionalit�ten wird nun durch Kleopatra abgedeckt
  (siehe unten).

- Handb�cher "Gpg4win f�r Einsteiger" und "Gpg4win f�r Durckblicker":
  Diese werden ersetzt durch das "Gpg4win Kompendium" (siehe unten).

Aktualisiert:
-------------

- Claws Mail: Version 3.7.0
  Wesentliche Neuerungen: Unterst�tzung von SSL, NNTP und IMAP
  in der Windows-Version von Claws Mail.

- GpgOL: Diese Komponenten wurde am umfassendsten aktualisiert.

  * Wesentliche Neuerungen sind:

    - Unterst�tzung von OpenPGP/MIME:
      Bisher wurde nur das sog. "inline-PGP" unterst�tzt. Nun
      k�nnen unter anderem auch Anh�nge direkt verarbeitet werden.

    - Unterst�tzung von S/MIME
      GpgOL unterst�tzt nun das auf X.509 basierende
      E-Mail Verschl�sselungsverfahren S/MIME.

    - Verwendung von Kleopatra f�r Grafische Benutzerdialoge:
      Anstatt eigene Dialog f�r die jeweiligen
      Verschl�sselungs-Operationen zu implementieren wird
      Kleopatra verwendet. Kleopatra bietet einheitliche
      Dialoge f�r Krypto-Operationen.

    - Unterst�tzung folgender Plattformen:
      Betriebssystem: Windows 2000, XP (32/64), Vista (32/64)
      Outlook: 2003, 2007

Neu:
----

- GpgEX: Das neue Plugin f�r Microsoft Explorer.

- Kleopatra: Der neue Zertifikatsmanager

  * Kleoaptra ist der bisherige S/MIME Zertifikatsmanager von KDE.
    Er ist zum einen um parallele Unterst�tzung von OpenPGP erweitert
    worden. Zum anderen fungiert Kleopatra als Grafische Oberfl�che
    f�r s�mtliche Kryptografischen Operationen und vereinheitlich
    damit die grafische Benutzerf�hrung.

  * Kleopatra l�uft in der Regel permanent als Dienst (siehe
    Icon im System-Tray), sobald dessen Dienste einmal im Verlauf
    der Sitzung abgefragt wurden.

  * Kleopatra ist noch in Entwicklung:
    Es fehlen noch einzelne Funktionalit�ten f�r OpenPGP.
    Daf�r kann alternativ auf GPA zur�ckgegriffen werden.

- Gpg4win Kompendium: Die neue Dokumentation zu Gpg4win.
  Es vereinigt die alten Handb�cher "Einsteiger" und "Durchblicker".
  Desweiteren wurden s�mtliche Kapitel f�r Gpg4win Version 2.0
  aktualisiert, also unter anderem angepasst auf Kleopatra, GpgEX und
  PGP/MIME sowie erg�nzt um S/MIME bzw. X.509.


Wichtigste �nderungen von Gpg4win 1.9.15 gegen�ber 1.9.14
=========================================================
 - Kleopatra:
    * Konfigurationsdialoge zusammengefasst: "GnuPG-Backend" nun
      unter "Kleopatra einrichten" integriert
    * Datei �ffnen/speichern-Dialoge zeigen nun standardm��ig
      auf das Nutzerverzeichnis
    * Verhalten des Fortschrittsbalkens (in der Statusleiste) verbessert
    * neuer "�ber Gpg4win"-Dialog im Hilfe-Men�
    * diverse �bersetzungen erg�nzt / korrigiert
    * diverse kleinere Stabilit�ts- und GUI-Verbesserungen

 - Gpg4win Kompendium:
    * weitere kleinere �berarbeitungen

 - Backend und Installer:
    * Verbesserung der "allow-mark-trusted"-Funktion: die trustlist.txt
      kann nun um Fingerprints erweitert werden, die der Nutzer explizit
      nicht vertraut.
    * diverse kleinere Verbesserungen
