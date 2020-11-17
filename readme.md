# Einleitung

In diesem Beispiel Projekt wird gezeigt, wie man Excel und Word Dateien mit git versionieren und vergleichen kann.

# Integration

Unterhalb von `tools` sind alle Skripte und Konfigurationen enthalten die man benötigt. Am besten kopiert man diesen Ordner direkt in sein Projekt. 

- `excel`         -> Excel Integration
- `MeldPortable`  -> Ein Diff und Mergetool, welches für alle anderen Dateien benutzt wird.
- `word`          -> Word Integration
- `.gitconfig`    -> Standardkonfigurationen die in die lokale .git/config sollten. Entweder kopiert man seine preferierten Eintellungen in die .git/config bzw. ~/.gitconfig oder man importiert diese hier via `git config --local include.path ../tools/.gitconfig` ein.

Die Datei `.gitattributes` sollte auch in das Projekt übernommen werden. Hier definiert man, welches Diff Tool für welchen Dateityp genutzt werden soll. In der `tools\.gitconfig` sind für Excel vier Möglichkeiten definiert, die man einsetzen kann:

- `spreadsheetcompare` -> Nutzt die Excel Funktionalität [Spreadsheet Compare](https://support.microsoft.com/en-us/office/overview-of-spreadsheet-compare-13fafa61-62aa-451b-8674-242ce5f2c986?ui=en-us&rs=en-us&ad=us]) welches nur in der Professional Version enthalten ist. Dies ist die bevorzugte Variante.
- `xl`                 -> Nutzt [git-xl](https://github.com/xlwings/git-xl). Ist Kostenlos, kann aber nur VBA diffen.
- `excel_cmp`          -> Nutzt [ExcelCompare](https://github.com/na-ka-na/ExcelCompare). Ist Kostenlos, kann aber nur Worksheets diffen. Hierfür muss ein JDK8 installiert sein.
- `xl_excel_cmp`       -> Ein Script, was git-xl und ExcelCompare kombiniert.

# Sonstiges

Zu erwähnen gibt es noch https://xltools.net/:

- Kostet etwas
- Versionsverwaltung direkt in Excel
- Pro Excel Sheet aber ein separates Repo
- Kann nicht auf ein Bitbucket, Github, ... hochgeladen werden
- Arbeiten nur via Share
