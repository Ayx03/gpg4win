Wichtige Informationen zum Einsatz von Gpg4win 1.9-BETA
=======================================================

Stand: Gpg4win-1.9.0-svn675 (20080111)

Hier finden sich wichtige Informationen die bei der
Entscheidung helfen sollen, ob Gpg4win 1.9 schon f�r
die individuellen Bed�rfnisse ausreicht und einen
Beta-Test sinnvoll erscheinen l��t oder aber ob
Gpg4win 1.9 noch nicht weit genug daf�r ist.

Ausserdem wird ein Ausblick gegeben, was mit
Gpg4win 2.0 an neuer Funktionalit�t zu erwarten ist.
Die 1.9er Versionen sind der Beta-Test-Zyklus. Ist er
abgeschlossen wird Version 2.0 freigegeben.

Verbesserungen seit Gpg4win-1.9.0-svn672
----------------------------------------

Behoben:

* Extend Menu of Tray-Kleopatra
  http://bugs.kde.org/show_bug.cgi?id=153566

Verbesserungen seit Gpg4win-1.9.0-svn651
----------------------------------------

- inline-PGP Entschl�sselung klappt besser, aber
  noch nicht vollst�ndig.

- Signierung S/MIME E-Mail klappt besser, aber
  sehr hackelig.

- Graphische Oberfl�che von Kleopatra erweitert.

- Import von P12-Dateien funktioniert nun �ber Kleopatra,
  aber etwas hackelig.

Behoben:

* Menu entry for Kleopatra lacks tooltip
  http://wald.intevation.org/tracker/index.php?func=detail&aid=563&group_id=11&atid=126

* Kleopatra: Tray Icon Menu: Shutdown crashes Kleopatra
  http://bugs.kde.org/show_bug.cgi?id=154423

Verbesserungen seit Gpg4win-1.9.0-svn639
----------------------------------------

Behoben:

* GpgEX: Verschl�sselung per OpenPGP nun funktional.

* GpgOL: OpenPGP/MIME Signatur-Erstellung nun funktional
  War unter anderem hier berichtet:
  GpgOL: Can not create OpenPGP Signature.
  https://bugs.g10code.com/gnupg/issue863

Verbesserungen seit Gpg4win-1.9.0-svn615
----------------------------------------

Behoben:

* GpgOL: Verschl�sselung mit OpenPGP/MIME nun funktional.

* In windows start menu: have "Documentation" submenu for Gpg4win
  http://wald.intevation.org/tracker/index.php?func=detail&aid=558&group_id=11&atid=129

* GpgOL: same title for different toolbar items
  https://bugs.g10code.com/gnupg/issue862


Migration:
----------

Wenn Sie eine Version Gpg4win 1.X installiert haben,
so deinstallieren Sie zuerst die alte Version bevor
Sie die neue Version intallieren.

Ansonsten kann es zu Problemen kommen, dass GpgEE
(wird bei 1.9 ersetzt durch GpgEX) �brig bleibt
und nicht mehr entfernt werden kann.

An einer Absicherung gegen versehentliches Installieren
ist in Arbeit:
http://wald.intevation.org/tracker/index.php?func=detail&aid=547&group_id=11&atid=126

Ist eine alte Version der 1.9er vorher installiert
gewesen, so muss unbedingt ein Neustart des Systems
erfolgen wenn die Installationsroutine dies (durch Vorauswahl)
empfohlen hat.
Ansonsten wird es zwangsl�ufig zu Fehlfunktionen
bei Verschl�sselungsoperationen kommen.

Insbesondere wenn eine 1.9er Version vor svn639 installiert
war, sollte diese zun�chst deinstalliert werden, da sonst
das Gpg4win Menu zuviele Eintr�ge zur Dokumentation enth�lt.

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

  * Achtung: Derzeit kann der Altbestand an signierten und
    verschl�sselten E-Mails nicht verarbeitet werden.
    Lediglich neue E-Mails die nach Installation von GpgOL
    eintreffen sind verarbeitbar.

  * Achtung: In verschiedenen F�llen passiert es, dass
    die "Gesendeten Objekte" kaputt sind, man also
    keine heile Kopie von versandten E-Mails hat.

  * Achtung: Es kann gelegentlich vorkommen, dass Kleopatra beendet
    wird (kein Schl�sselsymbol mehr in Task-Leiste oder Symbol
    verschwindet in dem Moment wo man mit der Maus dar�ber f�hrt).
    In diesem Fall kann es zu Fehlern bei GpgOL kommen.
    Kleopatra sollte �ber das Startmen� neu gestartet werden.

  * Grunds�tzlich h�ngt die Menge der funktionierenden Operationen
    wesentlich vom gegenw�rtigen Entwicklungsstand von Kleopatra ab.

  * Zustand der Operationen (einfache E-Mails ohne Anh�nge):
    - Signatur-Pr�fung inline-OpenPGP: Grunds�tzlich funktional,
      muss aber noch verbessert werden
    - Signatur-Pr�fung OpenPGP/MIME: Grunds�tzlich funktional,
      muss aber noch verbessert werden
    - Signatur-Pr�fung S/MIME Opaque: funktioniert nicht (nicht angebunden)
    - Signatur-Pr�fung S/MIME: Funktion defekt
    - Entschl�sselung inline-OpenPGP: Entschl�sselung erfolgreich,
      aber kann scheinbar nur ein einziges mal ausgef�hrt werden.
    - Entschl�sselung OpenPGP/MIME: Grunds�tzlich funktional, muss aber
      noch verbessert werden
    - Entschl�sselung S/MIME Opaque: Grunds�tzlich
      funktional, muss aber noch verbessert werden
    - Entschl�sselung S/MIME: Grunds�tzlich
      funktional, muss aber noch verbessert werden
    - Signatur-Pr�fung und Entschl�sselung inline-OpenPGP: nicht gepr�ft
      (Test-E-Mails nicht auf einfache Weise herstellbar)
    - Signatur-Pr�fung und Entschl�sselung OpenPGP/MIME: Grunds�tzlich
      funktional, muss aber noch verbessert werden
    - Signatur-Pr�fung und Entschl�sselung S/MIME Opaque: Funktion defekt
    - Signatur-Pr�fung und Entschl�sselung S/MIME: Grunds�tzlich
      funktional, muss aber noch verbessert werden

    - Signatur OpenPGP/MIME: Grunds�tzlich funktional, muss aber noch
      verbessert werden
    - Signatur S/MIME: Funktion defekt: Der E-Mail selbst fehlt die Signatur,
      die Kopie in gesendete Objekte ist kaputt. Es wird ein GPGME Fehler gemeldet.
    - Verschl�sselung OpenPGP/MIME: Grunds�tzlich funktional, muss aber noch
      verbessert werden.
    - Verschl�sselung S/MIME: Funktion defekt: Kleopatra kann Verschl�sselung
      nicht erfolgreich durchf�hren (dirmngr Fehler wird gemeldet).
    - Signatur und Verschl�sselung OpenPGP/MIME: Funktion defekt: Kleopatra h�ngt.
    - Signatur und Verschl�sselung S/MIME: Funktion defekt:  Kleopatra h�ngt.

Neu:

- GpgEX: Das neue Plugin f�r Microsoft Explorer.

  * Entschl�sseln/Verifizieren: Dateien auf Endung ".asc" werden
    derzeit nicht automatisch als Detached Signature erkannt.
    Man muss die zugeh�rige Datei im Verifikationsdialog dann
    h�ndisch angeben.
    Der Dialog ist noch nicht die endg�ltige Fassung sondern
    eine tempor�rer Ersatz.

  * Verschl�sseln: OpenPGP funktional, aber muss noch verbessert werden.
    Es bleiben tempor�re Dateien im jeweiligen Verzeichnis zur�ck.
    S/MIME noch nicht funktional (DirMngr nicht verf�gbar).

  * Signieren: Nicht funktional, da nach Auswahl des S/MIME Schl�ssels
    und der Datei leerer Reiter erscheint, der nur "Cancel" erlaubt.

  * Verschl�sseln/Signieren: Kleopatra-Aufrufe insgesamt noch nicht
    funktional.
    Derzeit m�ssen diese Operationen z.B. �ber GPA ausgef�hrt werden.
    Dort wird lediglich OpenPGP, aber kein S/MIME unterst�tzt.

- Kleopatra: Der neue Zertifikatsmanager

  * Kleoaptra ist der bisherige S/MIME Zertifikatsmanager von KDE.
    Es ist zum einen um parallele Unterst�tzung von OpenPGP erweitert
    worden. Zum anderen fungiert Kleaoptra als Grafische Oberfl�che
    f�r s�mtliche Kryptografischen Operationen und vereinheitlich
    damit die grafische Benutzerf�hrung.

  * WinPT und GPA werden erst aus dem Gpg4win Paket entfernt, wenn
    deren Funktionalit�t von Kleopatra vollst�ndig abgedeckt wird.

  * Kleopatra l�uft in der Regel permanent als Dienst (siehe
    Icon im System-Tray).
    Derzeit wird f�r leichteres Debugging bei direktem Start von
    Kleopatra eine Konsole (DOS-Box) ge�ffnet w�hrend Kleopatra
    in Betrieb ist.

  * Kleopatra ist noch in Entwicklung: Die bei Gpg4win enthaltene
    Version ist nicht in deutsch und bietet bisher nur die Liste der
    vorliegenden Zertifikate.

  * Die einzelnen Krypto-Dialoge sind noch nicht vollst�ndig implementiert,
    stattdessen sind teilweise Platzhalter-Dialoge mit eingeschr�nkter
    Funktionalit�t enthalten.


Bekannte Fehler
---------------

Berichtet zu svn675:

* Kleopatra UI Server not automatically running in systray
  http://wald.intevation.org/tracker/index.php?func=detail&aid=579&group_id=11&atid=126

* DirMngr system service can not be started
  http://wald.intevation.org/tracker/index.php?func=detail&aid=580&group_id=11&atid=126

Berichtet zu svn672:

* Kleopatra: Don't open DOS-Box when importing P12 file
  http://bugs.kde.org/show_bug.cgi?id=155395

* Kleopatra: Creating S/MIME Signature raises GPGME error
  http://bugs.kde.org/show_bug.cgi?id=155404

* Kleopatra: Lacks GPGME backend configuration dialog in current SVN version
  http://bugs.kde.org/show_bug.cgi?id=155403

Berichtet zu svn651:

* Kleopatra: Tray menu: toggle Open and Close
  http://bugs.kde.org/show_bug.cgi?id=154424

* Kleoaptra: Verification of S/MIME E-Mails fails
  http://bugs.kde.org/show_bug.cgi?id=154427

* Kleoapatra: Message and interaction dialogs should
  always raise in foreground (MS Windows)
  http://bugs.kde.org/show_bug.cgi?id=154430

* GpgOL: emails in sent-folder can not be verified
  https://bugs.g10code.com/gnupg/issue867

Berichtet zu svn615:

* GpgOL: does not decrypt inline-PGP received prior to Gpg4win-1.9.0
  https://bugs.g10code.com/gnupg/issue861

* Claws Mail: Freezes if password dialog is cancelled
  http://wald.intevation.org/tracker/index.php?func=detail&aid=548&group_id=11&atid=126

* The button to report a bug does not work
  http://bugs.kde.org/show_bug.cgi?id=153565

* Kleopatra: Check GpgConf results in error not finding config
  http://wald.intevation.org/tracker/index.php?func=detail&aid=556&group_id=11&atid=126
