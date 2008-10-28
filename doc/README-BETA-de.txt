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

Stand: Gpg4win-1.9.9 (20081028)

Hier finden sich wichtige Informationen die bei der
Entscheidung helfen sollen, ob Gpg4win 1.9 schon f�r
die individuellen Bed�rfnisse ausreicht und einen
Beta-Test sinnvoll erscheinen l��t oder aber ob
Gpg4win 1.9 noch nicht weit genug daf�r ist.

Ausserdem wird ein Ausblick gegeben, was mit
Gpg4win 2.0 an neuer Funktionalit�t zu erwarten ist.
Die 1.9er Versionen sind der Beta-Test-Zyklus. Ist er
abgeschlossen wird Version 2.0 freigegeben.

�nderungsinformationen gegen�ber den Vorherigen
Beta-Versionen finden sich am Ende dieses Dokumentes.

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
* Wichtige Hinweise zur Verwendung von S/MIME
* Migration
* Wichtigste �nderungen von Gpg4win 1.9 gegen�ber 1.1
* Wichtigste �nderungen von Gpg4win 1.9.9 gegen�ber 1.9.8


Wichtige Hinweise zur vorliegenden Version
==========================================

- Installationpaket ca. 47 MByte:
  Derzeit sind die Programme mit umfangreichen
  Debug-Informationen ausgestattet, so dass bei auftauchen
  eines Fehlers unmittelbar eine Fehleranalyse
  durchgef�hrt werden kann. F�r Version 2.0
  werden diese Debug-Informationen wieder entfernt
  und das Installationpaket deutlich kleiner (knapp 10 MByte,
  eventuell auch weniger).

- An sich selbst verschl�sseln:
  Es ist unbedingt empfehlenswert, dass Sie Ihre verschl�sselten
  OpenPGP- und S/MIME-Emails zus�tzlich mit Ihrem Zertifikat
  an sich selbst verschl�sseln. Nur so k�nnen Sie diese Nachrichten
  sp�ter auch wieder entschl�sseln.
  Dazu in Kleopatra unter "Extras->GnuPG-Backend einrichten..." 
  jeweils in die Textfelder:
  "GPG for S/MIME: Auch an NAME verschl�sseln" und
  "GPG for OpenPGP: Auch an NAME verschl�sseln"
  den Fingerprint Ihres jeweiligen Zertifikates einf�gen.

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

  * E-Mails werden auf dem Server in Microsoft-spezifischen
    Formaten gespeichert und k�nnen von anderen E-Mail-Programmen
    dann nicht mehr interpretiert und die Inhalte angezeigt werden.
    Eine Migrations-L�sung hierf�r ist in Arbeit.


Wichtige Hinweise zur Verwendung von S/MIME
===========================================

S/MIME ist ein f�r Gpg4win 2.0 neu hinzukommendes
E-Mail Verschl�sselungsverfahren.

Grunds�tzlich ist es empfehlenswert sich mit
dem Konzept von S/MIME auseinanderzusetzen bevor
man es einsetzt.

Konfiguration f�r S/MIME:
F�r die Inbetriebnahme sind folgende Schritte
durchzuf�hren.

- S/MIME f�r GpgOL einschalten:
  Unter Outlook im Men� Extras->Optionen, Reiter "GpgOL"
  muss S/MIME explizit eingeschaltet werden.
  Beachten Sie den Warnhinweis, der darauf hin erscheint.
  Achtung: In der aktuellen Beta muss S/MIME auch f�r eine korrete �berpr�fung
  einer OpenPGP-Signatur eingeschaltet sein. Dieses Problem ist bekannt
  und an einer L�sung wird gearbeitet.

- Neue S/MIME-Schl�ssel herstellen:
  Unter Kleopatra im Men� Datei->Neues Zertifikat w�hlen Sie
  "X.509" aus. Sie werden mit Hilfe des Assisstenten durch die
  Zertifikatserstellung geleitet.
  Beachten Sie, dass Sie als Ergebnis nur eine Zertifikats-Anfrage
  (p10-Datei) erhalten. Sie m�ssen diese anschlie�end an Ihre
  Zertifizierungsstelle weiterleiten, um Ihr neues X.509-Zertifikat
  zu erhalten.

- S/MIME-Zertifikatskette f�r pers�nlichen Schl�ssel importieren:
  Die zum geheimen Schl�ssel zugeh�rige Zertifikatskette
  als P7C-Datei importieren (Men� Datei->Zertifikate importieren).
  Es werden auch andere Suffixes f�r solche Dateien verwendet.
  Typischerweise besteht die Kette aus dem Wurzel-Zertifkat,
  einem CA-Zertifikat und dem pers�nlichen Zertifikat.

- Geheimen S/MIME-Schl�ssel importieren:
  Den pers�nlichen geheimen Schl�ssel als P12-Datei
  �ber Kleopatra importieren (Men� Datei->Zertifikate
  importieren).

- S/MIME-Zertifkate der E-Mail Empf�nger importieren:
  Alle sonstigen wichtigen Zertifikate (z.B. von
  Kommunikationspartner) auf die gleiche Weise importieren;
  am besten jeweils mit der kompletten Kette.

- Wurzelzertifikate als vertrauensw�rdig markieren:
  Wenn Sie im Kleopatra-Men� "Extras->GnuPG Backend einrichten"
  unter "GpgAgent" die Option "erlaube Aufrufern Schl�ssel als
  'vertrauensw�rdig' zu markieren" aktivieren, so werden Sie
  beim Gebrauch eines bisher nicht vertrauensw�rdig
  eingestuften Wurzel-Zertifkats gefragt, ob Sie es
  nun als vertrauensw�rdig einstufen wollen.
  Beachten Sie, dass der gpg-agent neu gestartet
  werden muss, z.B: durch ausloggen und wieder einloggen.

- Systemweites Vetrauen f�r Wurzel-Zertifkate f�r DirMngr aussprechen:
  Die entsprechenden Wurzel-Zertifikate m�ssen als DER-Dateien
  mit Dateinamen-Endung ".crt" oder ".der" im Verzeichnis
  %ALLUSERSPROFILE%\Anwendungsdaten\GNU\etc\dirmngr\trusted-certs\
  abgelegt werden.

- Probleme mit Sperrlisten (CRLs):
  Das S/MIME Verfahren beinhaltet die Verwendung von
  Sperrlisten, um die G�ltigkeit von Zertifkaten zu pr�fen.

  Hierbei kann es zu verschiedenen Problemen kommen, die
  noch nicht alle mit aussagekr�ftigen Fehlermeldungen
  ausgestattet sind.

  Solle also eine S/MIME Operation (egal welche) nicht funktionieren,
  schalten sie testweise die Verwendung von Sperrlisten aus
  und pr�fen Sie ob das Problem dann nicht mehr auftritt ist.
  Berichten Sie anschliessen Ihre Beobachtung an das Gpg4win
  Entwicklungs-Team, um eine L�sung zu finden.

  Man kann die CRL-Pr�fungen wie folgt ausschalten:
  Im Kleopatra-Men� "Extras->GnuPG Backend einrichten"
  unter "GPG for S/MIME" die Option "Niemals eine CRL konsultieren"
  aktivieren. Danach neu einloggen, um die �nderung zu aktivieren.

- DirMngr Konfigurations-Dialog nicht editierbar:
  Der Konfigurationsdialog unter "DirectoryManager" im GnuPG Backend
  ist nicht editierbar, da deren Einstellungen nur vom Systemadministrator
  in den dazugeh�rigen systemweiten Konfigurations-Textdateien
  vorgenommen werden kann. Gleiches gilt f�r die Proxy-Einstellung im Men�
  "Einstellungen->Kleopatra einrichten..." unter "S/MIME-Pr�fung".


Migration
=========

* Von einer �lteren Gpg4win 1.9er Version:

  Ist eine alte Version der 1.9er vorher installiert
  gewesen, so muss unbedingt ein Neustart des Systems
  erfolgen wenn die Installationsroutine dies (durch Vorauswahl)
  empfohlen hat.
  Ansonsten wird es zwangsl�ufig zu Fehlfunktionen
  bei Verschl�sselungsoperationen kommen.

* Von einer Gpg4win 1.X  oder sonstigen GnuPG Version:

  Sollte Gpg4win 1.x oder irgendeine andere GnuPG Installation
  auf Ihrem System installiert gewesen sein, so muss ggf. noch
  zur�ckgebliebene Registry-Eintrage entfernt werden:
  HKCU\Software\GNU\GnuPG\gpgProgramm
  HKLM\Software\GNU\GnuPG\gpgProgramm


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

- Claws Mail: Version 3.6.0cvs7
  Wesentliche Neuerungen: Unterst�tzung von SSL, NNTP und IMAP
  in der Windows-Version von Claws Mail.

- GpgOL: Diese Komponenten wurde am umfassendsten aktualisiert.

  * Wesentliche Neuerungen sind:

    - Unterst�tzung von OpenPGP/MIME:
      Bisher wurde nur das sog. "inline-PGP" unterst�tzt.
      Nun k�nnen unter anderem auch
      Anh�nge direkt verarbeitet werden.

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


Wichtigste �nderungen von Gpg4win 1.9.9 gegen�ber 1.9.8
=======================================================

 - Kleopatra:
   Hinweis: [#xxxxxx] markiert im Folgenden die Kleopatra-Fehlermeldungs-Nummer.
            Details k�nnen mit dieser Nummer unter http://bugs.kde.org/ 
            eingesehen werden.
     * Im- und Export von *.p12-Dateien korrigiert [#173369;#172716]
     * Export �ffentlicher Zertifikate neben *.asc/*.pem nun auch
       als *.gpg/*.der Dateien m�glich [#172531;#172787]
     * Zertifikatsimportfilter korrigiert [#173676;#173677]
     * Signatur-Zertifikatsauswahl auf ausgew�hltes Protokoll reduziert [#172786]
     * Farbe des Signaturpr�fdialogs ("nicht gen�gend Informationen")
       ist nun gelb anstatt gr�n [#172350]
     * bessere Unterst�tzung des Protokollmodus "automatisch" von GpgOL
       zur Auswahl von PGP/MIME bzw. S/MIME [#166732]
     * Passphrase-�nderungen (f�r OpenPGP-Zertifikate) werden nun gespeichert 
       [#166139]
     * �bersetzungen erg�nzt / korrigiert
       [#170244;#172731;#172732;#172734;#172735]
     * diverse kleinere Stabilit�ts- und GUI-Verbesserungen

 - GpgOL:
     * Verifizieren und Entschl�sseln von InlinePGP-Nachrichten korrigiert
     * Tooltip f�r Verschl�sseln- und Signieren-Button umbenannt
     * Warndialog beim Versuch eine leere signierte oder verschl�sselte 
       Nachricht zu senden 
     * Weitergeleitete signierte Mails: keine "gpgol000.txt" Datei mehr
       im Anhang 

 - Backend:
     * DirMngr unterst�tzt nun anwenderspezifische Vertrauensdefinitionen f�r
       Wurzelzertifkate
     * DirMngr unterst�tzt zus�tzlich *.der Dateien im Verzeichnis 
       'trusted-certs'
     * Umlaute in OpenPGP-Zertifikatsdetails auf Keyservern werden nun 
       korrekt dargestellt

 - Gpg4win Kompendium 3.0.0-beta1 Release (vom 22.10.2008) integriert

 - Backend und Installer: Es sind viele kleine und mittlere
   Probleme und Fehler behoben worden.
