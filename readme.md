# Tools
- Spreadsheet Compare (https://support.microsoft.com/en-us/office/overview-of-spreadsheet-compare-13fafa61-62aa-451b-8674-242ce5f2c986?ui=en-us&rs=en-us&ad=us)
  - Ist direkt von Microsoft
  - Ist enthalten in: Office Professional Plus or Office 365 ProPlus. 

- https://xltools.net/
  - kostet was
  - lokale versionsverwaltung direkt in excel
  - nicht im Team
  - am besten auf einem Share ablegen
  - kann vba und excel selber

- https://github.com/xlwings/git-xl
  - kostet nix und gibt es mit Server (https://www.xltrail.com/) der was kostet
  - kann vba und excel selber in der kostenpflichtigen variante
  - in der kostenlosen nur VBA
  
- https://github.com/na-ka-na/ExcelCompare
  - kostet nix
  - kann nur workbooks, kein vba
  
- Tortoise GIT 
  - kann von Haus aus Excel Sheet diffen, aber nicht VBA


# Vorraussetzungen
- Für excelcompare muss JDK8 installiert sein

# .git/config
einmal ausführen: `git config --local include.path ../tools/.gitconfig`

# .gitattributes
anpassen: siehe tools/.gitconfig 
Möglichkeiten: spreadsheetcompare | mydiff | xl | excel_cmp
```
*.xla diff=spreadsheetcompare
*.xlam diff=spreadsheetcompare
*.xls diff=spreadsheetcompare
*.xlsb diff=spreadsheetcompare
*.xlsm diff=spreadsheetcompare
*.xlsx diff=spreadsheetcompare
*.xlt diff=spreadsheetcompare
*.xltm diff=spreadsheetcompare
*.xltx diff=spreadsheetcompare
```
