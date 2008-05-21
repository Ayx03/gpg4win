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

Stand: Gpg4win-1.9.1 (20080514)

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
* Wichtigste �nderungen von Gpg4win 1.9.1 gegen�ber 1.9.0


Wichtige Hinweise zur vorliegenden Version
==========================================

- Firewall-Probleme:
  Ist eine strenge Firewall-Regel in Betrieb, kann es
  zu Problemen kommen, da Kleopatra �ber einen sog. Port
  an "localhost" mit den anderen Komponenten kommuniziert.
  Schalten Sie entsprechende Regeln Ihrer Firewall ggf. aus.

- Installationpaket knapp 40 MByte:
  Derzeit sind die Programme mit umfangreichen
  Debug-Informationen ausgestattet, so dass bei auftauchen
  eines Fehlers unmittelbar eine Fehleranalyse
  durchgef�hrt werden kann. F�r Version 2.0
  werden diese Debug-Informationen wieder entfernt
  und das Installationpaket deutlich kleiner (knapp 10 MByte,
  eventuell auch weniger).

- Handb�cher noch nicht aktualisiert:
  Die beiden Hanb�cher "Gpg4win f�r Einsteiger" und "Gpg4win
  f�r Durchblicker" sind noch nicht vollst�ndig aktualisiert.
  Die Versionen, die mit dem 1.9er Paket installiert werden,
  enthalten jedoch einige Erweiterungen und sollte der
  offiziell herunterladbaren Version 2.0.2 vorgezogen werden.

- An sich selbst verschl�sseln:
  Es ist unbedingt empfehlenswert f�r OpenPGP und S/MIME
  seine Zertifikate konfigurieren
  f�r die die Emails auch immer verschl�sselt werden sollen.
  Dazu jeweils im GnuPG Konfigurations-Dialog von Kleopatra
  "GPG for S/MIME: encrypt to user ID NAME as well" und
  "GPG for OpenPGP: encrypt to user ID NAME as well"
  jeweils den Fingerprint des jeweiligen Zertifikates
  einf�gen.

- Verwendung von Outlook Plugin "GpgOL":

  * Sie Sollten unbedingt Sicherheitskopien Ihrere alten
    Verschl�sselten/Signierten E-Mails, z.B. in PST-Dateien
    machen!

  * Verschl�sselte E-Mails unverschl�sselt auf E-Mail-Server:
    Es kann vorkommen, dass Teile von verschl�sselten E-Mails
    in entschl�sselter/unverschl�sselter Form auf dem E-Mail-Server
    (IMAP oder MAPI) zu liegen kommen wenn man sie erstellt/liesst.
    Betroffen sind nur der Inhalt des Anzeigefensters von Outlook,
    also der "E-Mail-Body". Anh�nge sind nicht betroffen.
    Schaltet man die Voransicht von Outlook ab, so
    verringert sich die Wahrscheinlichkeit daf�r deutlich.

  * E-Mails werden auf dem Server in Microsoft-spezifischen
    Formaten gespeichert und k�nnen von anderen E-Mail-Programmen
    dann nicht mehr interpretiert und die Inhalte angezeigt werden.


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
  Beachten Sie den Warnhinweis der darauf hin erscheint.

- Neue S/MIME Schl�ssel herstellen:
  Eine Erstellung *neuer* S/MIME-Schl�ssel ist
  noch nicht vollst�ndig in Kleopatra implementiert.

- S/MIME-Zertifikatskette f�r pers�nlichen Schl�ssel importieren:
  Die zum geheimen Schl�ssel zugeh�rige Zertifikatskette
  als P7C-Datei importieren (Men� Datei->Zertifikate importieren).
  Es werden auch andere Suffixes f�r solche Dateien verwendet.
  Typischerweise besteht die Kette aus dem Wurzel-Zertifkat,
  einem CA-Zertifikat und dem pers�nlichen Zertifikat.

- Geheimen S/MIME Schl�ssel importieren:
  Den pers�nlichen geheimen Schl�ssel als P12-Datei
  �ber Kleopatra importieren (Men� Datei->Zertifikate
  importieren).
  Achtung: Der P12 import funktioniert nur, wenn
  der vohergehende Schritt auch tats�chlich durchgef�hrt
  wurde.

- S/MIME-Zertifkate der E-Mail Empf�nger importieren:
  Alle sonstigen wichtigen Zertifikate, z.B. von
  Kommunikationspartner auf die gleiche Weise importieren
  (am besten jeweils mit der kompletten Kette)

- Wurzelzertifikate als Vertrauensw�rdig markieren:
  Wenn Sie "GnuPG Backend einrichten" Konfiguration-Dialog
  von Kleopatra "Gpg Agent: allow clients
  to mark keys as trusted" aktivieren, so werden Sie
  beim Gebrauch eines bisher nicht vertrauensw�rdig
  eingestuften Wurzel-Zertifkats gefragt, ob Sie es
  nun als Vertrauensw�rdig einstufen wollen.
  Beachten Sie, dass der gpg-agent neu gestartet
  werden muss, z.B: durch ausloggen und wieder einloggen.

- Vetrauen f�r Wurzel-Zertifkate f�r DirMngr aussprechen:
  Die entsprechenden Wurzel-Zertifikate m�ssen als DER-Dateien
  mit Dateinamen-Endung ".crt" im Verzeichnis
  %INSTALL_DIR%\etc\dirmngr\trusted-certs\
  abgelegt werden.

- Probleme mit Sperrlisten (CRLs):
  Das S/MIME Verfahren beinhaltet die Verwendung von
  Sperrlisten um die G�ltigkeit von Zertifkaten zu pr�fen.

  Hierbei kann es zu verschiedenen Problmen kommen, die
  noch nicht alle mit aussagekr�ftigen Fehlermeldungen
  ausgestattet sind.

  Solle also eine S/MIME Operation nicht funktionieren,
  schalten sie testweise die Verwendung von Sperrlisten aus
  und pr�fen Sie ob das Problem dann nicht mehr auftritt ist.
  Berichten Sie anschliessen Ihre Beobachtung an das Gpg4win
  Entwicklungs-Team um eine L�sung zu finden.

  Man kann die CRL-Pr�fungen so ausschalten:
  "GPG for S/MIME: never consult a CRL" aktivieren im
  "GnuPG Backend einrichten" Konfiguration-Dialog von Kleopatra.
  Danach neu einloggen um die �nderung zu aktivieren.


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
  auf Ihrem System installiert gewesen sein, so muss ein ggf. noch
  zur�ckgebliebener Registry-Eintrage entfernt werden:
  HKCU\Software\GNU\GnuPG\gpgProgramm


Wichtigste �nderungen von Gpg4win 1.9 gegen�ber 1.1
===================================================


Entfallen:
----------

- GpgEE: Dieses Modul wird ersetzt durch GpgEX (siehe unten)


Aktualisiert:
-------------

- Claws Mail: Version 3.4.0
  NNTP- und IMAP-Unterst�tzung ist seitens Gpg4win ein St�ck
  weiter vorbereitet, aber noch nicht verf�gbar.
  Seitens Claws Mail ist die SSL-Unterst�tzung ebenfalls
  ein St�ck weiter, allerdings bestehen aktuell noch Probleme f�r
  die Windows-Version.
  Im Verlauf von 2008 k�nnte die Integration von SSL, NNTP und
  IMAP in der Windows-Version von Claws Mail abgeschlossen werden.

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

  * WinPT und GPA werden erst aus dem Gpg4win Paket entfernt, wenn
    deren Funktionalit�t von Kleopatra vollst�ndig abgedeckt wird.

  * Kleopatra l�uft in der Regel permanent als Dienst (siehe
    Icon im System-Tray) sobald dessen Dienste einmal im Verlauf
    der Sitzung abgefragt wurden.

  * Kleopatra ist noch in Entwicklung:
    Es fehlen noch einzelne Funktionalit�ten f�r OpenPGP.
    Daf�r kann alternativ auf GPA oder WinPT zur�ckgegriffen werden.


Wichtigste �nderungen von Gpg4win 1.9.1 gegen�ber 1.9.0
=======================================================

 * Claws Mail: Update von 3.1.0cvs370 auf 3.4.0

 * GpgOL: Verwendet nun Icons (toolbar etc)

 * Kleopatra:
  * Selbst�ndiger Test auf m�gliche Ausf�hrungsprobleme
  * Pr�fungsergebnis nun in eigenem Dialog; gleicht der
    in KMail verwendeten Form
  * Signatur/Verschl�sselung: Die Dialog-Sequenz wurde �berarbeitet.
  * Audit-Log Unterst�tzung
  * Fortschrittsbalken bei der Behandlung von Dateien
  * Zwischenablage Unterst�tzung
