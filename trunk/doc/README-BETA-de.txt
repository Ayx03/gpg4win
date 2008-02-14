Wichtige Informationen zum Einsatz von Gpg4win 1.9-BETA
=======================================================

Stand: Gpg4win-1.9.0-svn709 (20080214)

Hier finden sich wichtige Informationen die bei der
Entscheidung helfen sollen, ob Gpg4win 1.9 schon f�r
die individuellen Bed�rfnisse ausreicht und einen
Beta-Test sinnvoll erscheinen l��t oder aber ob
Gpg4win 1.9 noch nicht weit genug daf�r ist.

Ausserdem wird ein Ausblick gegeben, was mit
Gpg4win 2.0 an neuer Funktionalit�t zu erwarten ist.
Die 1.9er Versionen sind der Beta-Test-Zyklus. Ist er
abgeschlossen wird Version 2.0 freigegeben.


Wesentliche Probleme der vorliegenden Version
---------------------------------------------

- Entschl�sselung InlinePGP: Die E-Mails werden
  einmnalig entschl�sselt, aber dann zerst�rt.
  Also unbedingt solche E-Mails vorher sichern.

- F�r die Verwendung von S/MIME sind die CRL-Pr�fungen
  auszuschalten: "GPG for S/MIME: never consult a CRL"
  und "Gpg Agent: allow clients to mark keys as trusted" zu aktivieren.
  (beides im GnuPG Konfiguration-Dialog von Kleopatra)
  Danach neu einloggen um die �nderung zu aktivieren.

- S/MIME Opak: Signierte und(!) verschl�sselte
  E-Mails k�nnen nicht verarbeitet werden.

- An sich selbst verschl�sseln: man muss unbedingt
  f�r OpenPGP und S/MIME seine Zertifikate konfigurieren
  f�r die die Emails auch immer verschl�sselt werden sollen.
  Dazu jeweils im GnuPG Konfigurations-Dialog von Kleopatra
  "GPG for S/MIME: encrypt to user ID NAME as well" und
  "GPG for OpenPGP: encrypt to user ID NAME as well"
  jeweils den Fingerprint des jeweiligen Zertifikates
  einf�gen.


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

  * Zustand der Operationen (getestet: einfache E-Mails ohne Anh�nge):
    - Signatur-Pr�fung inline-OpenPGP: Grunds�tzlich funktional
    - Signatur-Pr�fung OpenPGP/MIME: Grunds�tzlich funktional
    - Signatur-Pr�fung S/MIME Opaque: Grunds�tzlich funktional
    - Signatur-Pr�fung S/MIME: Grunds�tzlich funktional
    - Entschl�sselung inline-OpenPGP: Grunds�tzlich funktional
    - Entschl�sselung OpenPGP/MIME: Grunds�tzlich funktional
    - Entschl�sselung S/MIME Opaque: Grunds�tzlich funktional
    - Entschl�sselung S/MIME: Grunds�tzlich funktional
    - Signatur-Pr�fung und Entschl�sselung inline-OpenPGP: nicht gepr�ft
      (Test-E-Mails nicht auf einfache Weise herstellbar)
    - Signatur-Pr�fung und Entschl�sselung OpenPGP/MIME: Grunds�tzlich funktional
    - Signatur-Pr�fung und Entschl�sselung S/MIME Opaque: Funktion defekt
    - Signatur-Pr�fung und Entschl�sselung S/MIME: Grunds�tzlich funktional

    - Signatur OpenPGP/MIME: Grunds�tzlich funktional
    - Signatur S/MIME: Grunds�tzlich funktional
    - Verschl�sselung OpenPGP/MIME: Grunds�tzlich funktional
    - Verschl�sselung S/MIME: Grunds�tzlich funktional
    - Signatur und Verschl�sselung OpenPGP/MIME: Grunds�tzlich funktional
    - Signatur und Verschl�sselung S/MIME: Grunds�tzlich funktional

Neu:

- GpgEX: Das neue Plugin f�r Microsoft Explorer.

  Nicht funktionale OpenPGP Methoden m�ssen z.B. �ber GPA ausgef�hrt werden.
  F�r S/MIME gibt es keine Alternative.

  * Verifizieren OpenPGP: Grunds�tzlich funktional.
  * Verifizieren S/MIME: Grunds�tzlich funktional.

  * Verschl�sseln OpenPGP: Grunds�tzlich funktional.
  * Verschl�sseln SMIME: Grunds�tzlich funktional

  * Entschl�sseln OpenPGP: Grunds�tzlich funktional.
  * Entschl�sseln S/MIME: Grunds�tzlich funktional

  * Signieren OpenPGP: Grunds�tzlich funktional.
  * Signieren S/MIME: Grunds�tzlich funktional.


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

  * Kleopatra ist noch in Entwicklung: Die bei Gpg4win enthaltene
    Version ist nicht in deutsch und bietet bisher nur die Liste der
    vorliegenden Zertifikate.

  * Die einzelnen Krypto-Dialoge sind noch nicht vollst�ndig implementiert,
    stattdessen sind teilweise Platzhalter-Dialoge mit eingeschr�nkter
    Funktionalit�t enthalten.


Bekannte Fehler
---------------

Berichtet zu svn684:

* Improve GnuPG Config Check GUI
  http://bugs.kde.org/show_bug.cgi?id=156483

Berichtet zu svn615:

* GpgOL: does not decrypt inline-PGP received prior to Gpg4win-1.9.0
  https://bugs.g10code.com/gnupg/issue861

* Claws Mail: Freezes if password dialog is cancelled
  http://wald.intevation.org/tracker/index.php?func=detail&aid=548&group_id=11&atid=126

* The button to report a bug does not work
  http://bugs.kde.org/show_bug.cgi?id=153565

* Kleopatra: Check GpgConf results in error not finding config
  http://wald.intevation.org/tracker/index.php?func=detail&aid=556&group_id=11&atid=126
