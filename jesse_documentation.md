# Dokumentation Auftrag Autohaus

## Einleitung

Wir haben von Herr Vogel den Auftrag bekommen, ein Bash Script zu schreiben, mit welchem man Daten von einem .spl File laden kann, diese dann auf gewisse Eigenschaften Prüft und dann in ein neues .spl File schreibt. Damit sollte die Aufgabe eines Mitarbeiters in der Test Firma Automatisiert werden.

## Beschreibung der Befehle

### grep-e'^2'export_test.spl

Dieser Befehl holt die Daten mit einem Regex (Regular Expression) aus dem export.spl File und leitet die Daten in eine Pipe zum nächsten Befehl weiter.

### cut-f3,4-d$'\t'

Mit dieser Funktion werden die Daten vom vorherigen grep Befehl weiter verarbeitet. Wenn man es genauer sieht, wird in diesem Schritt die Cut Funktion mit -f3,4 wird angegeben, welche Felder genau abgeschnitten werden. Mit diesem Ansatz -d$'\t' wird der trenner angegeben. In diesem Fall ist der Trenner ein Tab (ein Tabulator). Wenn dieser Befehl fertig ist, dann wird alles auch wieder in eine Pipe weitergeleitet.

### tr-d"'">output.spl

Hier in diesem letzten Schritt werden die Daten wieder von dem Befehl empfangen und dann werden noch die Hochkommas aus den Daten entfernt. Schlussendlich wird dann alles in die Datei output.spl geschrieben.

## Beschreibungen von anderen noch wichtigen Dingen

### Pipes

Zwischen den Befehlen werden Pipes verwendet. Diese sind eigentlich nur dazu da, um die Ausgaben der verschiedenen Befehle direkt in andere Befehle weiterzuleiten. Dies hat den Vorteil, dass man die Daten nicht zwischenspeichern muss und es ist für die Performance deutlich besser Pipes zu verwenden.

### Backslashes \

Die Backslashes in diesem Programm sind dazu da, um das ganze nicht zu einem riesigen one liner zu machen, denn eigentlich ist der ganze Befehl ein einziger one liner und durch die Backslashes kann man one liner ohne Probleme aufteilen auf mehrere Zeilen.
