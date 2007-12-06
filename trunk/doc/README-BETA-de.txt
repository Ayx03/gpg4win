Wichtige Informationen zum Einsatz von Gpg4win 1.9-BETA
=======================================================

Stand: Gpg4win-1.9.0-svn615 (20071130)

Hier finden sich wichtige Informationen die bei der
Entscheidung helfen sollen, ob Gpg4win 1.9 schon f�r
die individuellen Bed�rfnisse ausreicht und einen
Beta-Test sinnvoll erscheinen l��t oder aber ob
Gpg4win 1.9 noch nicht weit genug daf�r ist.

Ausserdem wird ein Ausblick gegeben, was mit
Gpg4win 2.0 an neuer Funktionalit�t zu erwarten ist.
Die 1.9er Versionen sind der Beta-Test-Zyklus. Ist er
abgeschlossen wird Version 2.0 freigegeben.


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
Ansonsten wird es zwangl�ufig zu Fehlfunktionen
bei Verschl�sselungsoperationen kommen.


Komponenten von Gpg4win 1.9 und ihr Status
------------------------------------------


Entfallen:

- GpgEE: Dieses Modul wird ersetzt durch GpgEX (siehe unten)


Aktualisiert:

- Claws Mail: Version 3.0.2.
  NNTP- und IMAP-Unterst�tzung ist seitens Gpg4win ein St�ck
  weiter vorbereitet, aber noch nicht verf�gbar.
  Seitens Claws Mail ist die SSL-Unterst�tzung ebenfalls
  ein St�ck weiter, allerdings erst ab Version 3.1.0 verf�gbar.
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

  * Achtung: Es kann gelegentlich vorkommen, dass Kleopatra beendet
    wird (kein Schl�sselsymbol mehr in Task-Leiste oder Symbol
    verschwindet in dem Moment wo man mit der Maus dar�ber f�hrt).
    In diesem Fall kann es zu Fehlern bei GpgOL kommen.
    Kleopatra sollte �ber das Startmen� neu gestartet werden.

  * Hinweis: Der Import einer von P12- und PEM-Dateien ist
    derzeit nur �ber die Kommandozeile m�glich, z.B.:
    gpgsm --import datei.p12

  * Grunds�tzlich h�ngt die Menge der funktionierenden Operationen
    wesentlich vom gegenw�rtigen Entwicklungsstand von Kleopatra ab.

  * Zustand der Operationen (einfache E-Mails ohne Anh�nge):
    - Signatur-Pr�fung inline-OpenPGP: Grunds�tzlich funktional,
      muss aber noch verbessert werden
    - Signatur-Pr�fung OpenPGP/MIME: Grunds�tzlich funktional,
      muss aber noch verbessert werden
    - Signatur-Pr�fung S/MIME Opaque: funktioniert nicht (nicht angebunden)
    - Signatur-Pr�fung S/MIME: Funktion defekt
    - Entschl�sselung inline-OpenPGP: Bearbeitung scheint erfolgreich,
      aber entschl�sselter Text kann nicht angezeigt werden.
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

    - Signatur OpenPGP/MIME: Funktion defekt: Signatur wird nicht erstellt
    - Signatur S/MIME: Funktion defekt: Signatur wird nicht erstellt
    - Verschl�sselung OpenPGP/MIME: Funktion defekt: Absturz von Kleopatra
    - Verschl�sselung S/MIME: Funktione defekt: Absturz von Kleopatra
    - Signatur und Verschl�sselung OpenPGP/MIME: Funktion defekt
    - Signatur und Verschl�sselung S/MIME: Funktion defekt: Absturz von Kleopatra

Neu:

- GpgEX: Das neue Plugin f�r Microsoft Explorer.

  * Entschl�sseln/Verifizieren: Dateien auf Endung ".asc" werden
    derzeit nicht automatisch als Detached Signature erkannt.
    Man muss die zugeh�rige Datei im Verifikationsdialog dann
    h�ndisch angeben.
    Der Dialog ist noch nicht die endg�ltige Fassung sondern
    eine tempor�rer Ersatz.

  * Verschl�sseln/Signieren: Kleopatra-Aufrufe noch nicht aktiv.
    Derzeit muss diese Operation z.B. �ber GPA ausgef�hrt werden.

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
    stattdessen sind teilweise Platzhalter-Dialog mit eingeschr�nkter
    Funktionalit�t enthalten.


Bekannte Fehler
---------------

* GpgOL: does not decrypt inline-PGP received prior to Gpg4win-1.9.0
  https://bugs.g10code.com/gnupg/issue861

* GpgOL: same title for different toolbar items
  https://bugs.g10code.com/gnupg/issue862

* GpgOL: Can not create OpenPGP Signature.
  https://bugs.g10code.com/gnupg/issue863

* Claws Mail: Freezes if password dialog is cancelled
  http://wald.intevation.org/tracker/index.php?func=detail&aid=548&group_id=11&atid=126

* The button to report a bug does not work
  http://bugs.kde.org/show_bug.cgi?id=153565

* Extend Menu of Tray-Kleopatra
  http://bugs.kde.org/show_bug.cgi?id=153566

* Kleopatra: Check GpgConf results in error not finding config
  http://wald.intevation.org/tracker/index.php?func=detail&aid=556&group_id=11&atid=126
