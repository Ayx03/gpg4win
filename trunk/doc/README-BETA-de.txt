Wichtige Informationen zum Einsatz von Gpg4win 1.9-BETA
=======================================================

Stand: Gpg4win-1.9.0-svn753 (20080324)

Hier finden sich wichtige Informationen die bei der
Entscheidung helfen sollen, ob Gpg4win 1.9 schon f�r
die individuellen Bed�rfnisse ausreicht und einen
Beta-Test sinnvoll erscheinen l��t oder aber ob
Gpg4win 1.9 noch nicht weit genug daf�r ist.

Ausserdem wird ein Ausblick gegeben, was mit
Gpg4win 2.0 an neuer Funktionalit�t zu erwarten ist.
Die 1.9er Versionen sind der Beta-Test-Zyklus. Ist er
abgeschlossen wird Version 2.0 freigegeben.


Wichtige Hinweise zur vorliegenden Version
------------------------------------------

- Probleme mit Verzeichnisdienst "DirMngr":
  Es kann sein, dass der Dienst "DirMngr" bei
  S/MIME-Operationen sehr lange Laufzeiten zeigt.

  In diesem Fall sind f�r die Verwendung von S/MIME die CRL-Pr�fungen
  auszuschalten: "GPG for S/MIME: never consult a CRL"
  und "Gpg Agent: allow clients to mark keys as trusted" zu aktivieren.
  (beides im "GnuPG Backend einrichten" Konfiguration-Dialog von Kleopatra)
  Danach neu einloggen um die �nderung zu aktivieren.

- Deutsche Sprachunterst�tzung:
  Ist noch nicht in allen Bereichen realisiert.
  Teilweise sind Dialoge daher in englisch oder
  deutsch/englisch gemischt.

- An sich selbst verschl�sseln:
  Es ist unbedingt empfehlenswert f�r OpenPGP und S/MIME
  seine Zertifikate konfigurieren
  f�r die die Emails auch immer verschl�sselt werden sollen.
  Dazu jeweils im GnuPG Konfigurations-Dialog von Kleopatra
  "GPG for S/MIME: encrypt to user ID NAME as well" und
  "GPG for OpenPGP: encrypt to user ID NAME as well"
  jeweils den Fingerprint des jeweiligen Zertifikates
  einf�gen.

- Konfiguration f�r S/MIME:
  F�r die Inbetriebnahme sind folgende Schritte
  durchzuf�hren:
  * Den pers�nlichen geheimen Schl�ssel als P12-Datei
    �ber Kleopatra importieren (Men� Datei->Zertifikate
    importieren)
  * Die zum geheimen Schl�ssel zugeh�rige Zertifikatskette
    als P7C-Datei importieren. Es werden auch andere
    Suffixes f�r solche Dateien verwendet. Einfach �ber
    das gleiche Men� wie die P12-Datei importieren.
    Typischerweise besteht die Kette aus dem Wurzel-Zertifkat,
    einem CA-Zertifikat und dem pers�nlichen Zertifikat.
  * Alle sonstigen wichtigen Zertifikate, z.B. von
    Kommunikationspartner auf die gleiche Weise importieren
    (am besten jeweils mit der kompletten Kette)
  * Wurzelzertifkate als Vertrauensw�rdig markieren:
    Haben Sie wie oben beschrieben "Gpg Agent: allow clients
    to mark keys as trusted" aktiviert, so werden Sie
    beim Gebrauch eines bisher nicht vertrauensw�rdig
    eingestuften Wurzel-Zertifkats gefragt, ob Sie es
    nun als Vertrauensw�rdig einstufen wollen.
    Ansonsten wird das Vetrauen in Wurzel-Zertifkate wie folgt
    ausgesprochen:
    TODO
  * Hinweis: Eine Erstellung *neuer* S/MIME-Schl�ssel ist
    noch nicht vollst�ndig in Kleopatra implementiert.

Migration
---------

Ist eine alte Version der 1.9er vorher installiert
gewesen, so muss unbedingt ein Neustart des Systems
erfolgen wenn die Installationsroutine dies (durch Vorauswahl)
empfohlen hat.
Ansonsten wird es zwangsl�ufig zu Fehlfunktionen
bei Verschl�sselungsoperationen kommen.


Komponenten von Gpg4win 1.9 und ihr Status
------------------------------------------


Entfallen:

- GpgEE: Dieses Modul wird ersetzt durch GpgEX (siehe unten)


Aktualisiert:

- Claws Mail: Version 3.1.0cvs70
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
      E-Mail Verschl�sselungsverfahren.

    - Verwendung von Kleopatra f�r Grafische Benutzerdialoge:
      Anstatt eigene Dialog f�r die jeweiligen
      Verschl�sselungs-Operationen zu implementieren wird
      Kleopatra verwendet. Kleopatra bietet einheitliche
      Dialoge f�r Krypto-Operationen.

  * Zustand der Operationen
  * Folgende Operationen sind als grunds�tzlich
    funktional gestestet (einfache E-Mails ohne Anh�nge):
    - Signatur-Pr�fung inline-OpenPGP
    - Signatur-Pr�fung OpenPGP/MIME
    - Signatur-Pr�fung S/MIME Opaque
    - Signatur-Pr�fung S/MIME
    - Entschl�sselung inline-OpenPGP
    - Entschl�sselung OpenPGP/MIME
    - Entschl�sselung S/MIME Opaque
    - Entschl�sselung S/MIME
    - Signatur-Pr�fung und Entschl�sselung inline-OpenPGP
    - Signatur-Pr�fung und Entschl�sselung OpenPGP/MIME
    - Signatur-Pr�fung und Entschl�sselung S/MIME Opaque
    - Signatur-Pr�fung und Entschl�sselung S/MIME

    - Signatur OpenPGP/MIME
    - Signatur S/MIME
    - Verschl�sselung OpenPGP/MIME
    - Verschl�sselung S/MIME
    - Signatur und Verschl�sselung OpenPGP/MIME
    - Signatur und Verschl�sselung S/MIME

Neu:

- GpgEX: Das neue Plugin f�r Microsoft Explorer.

  Folgende Operationen sind als grunds�tzlich
  funktional gestestet:

  * Verifizieren OpenPGP
  * Verifizieren S/MIME
  * Verschl�sseln OpenPGP
  * Verschl�sseln SMIME
  * Entschl�sseln OpenPGP
  * Entschl�sseln S/MIME
  * Signieren OpenPGP
  * Signieren S/MIME


- Kleopatra: Der neue Zertifikatsmanager

  * Kleoaptra ist der bisherige S/MIME Zertifikatsmanager von KDE.
    Es ist zum einen um parallele Unterst�tzung von OpenPGP erweitert
    worden. Zum anderen fungiert Kleaoptra als Grafische Oberfl�che
    f�r s�mtliche Kryptografischen Operationen und vereinheitlich
    damit die grafische Benutzerf�hrung.

  * WinPT und GPA werden erst aus dem Gpg4win Paket entfernt, wenn
    deren Funktionalit�t von Kleopatra vollst�ndig abgedeckt wird.

  * Kleopatra l�uft in der Regel permanent als Dienst (siehe
    Icon im System-Tray) sobald dessen Dienste einmal im Verlauf
    der Sitzung abgefragt wurden.

  * Kleopatra ist noch in Entwicklung: Alle wesentlichen
    Funktionalit�ten, aber es fehlen noch einzelne f�r S/MIME
    und diverse f�r OpenPGP. F�r OpenPGP kann alternativ auf
    GPA oder WinPT zur�ckgegriffen werden.

  * Eine �berabreitung der einzelnen Krypto-Dialoge
    (z.B. f�r Verschl�sselung oder Signatur-Pr�fung) ist derezit
    noch in Arbeit. Teilweise erscheinen sie daher nicht
    aufger�umt/optimal.


Einige Bekannte Fehler
----------------------

Berichtet zu svn684:

* Improve GnuPG Config Check GUI
  http://bugs.kde.org/show_bug.cgi?id=156483

Berichtet zu svn615:

* Claws Mail: Freezes if password dialog is cancelled
  http://wald.intevation.org/tracker/index.php?func=detail&aid=548&group_id=11&atid=126

* The button to report a bug does not work
  http://bugs.kde.org/show_bug.cgi?id=153565

* Kleopatra: Check GpgConf results in error not finding config
  http://wald.intevation.org/tracker/index.php?func=detail&aid=556&group_id=11&atid=126
