# Tools
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
- JDK8 muss installiert sein (für excelcompare)

# .git/config

Only Worksheet diff
```
[diff "excel_cmp"]
	command = tools/ExcelCompare-0.6.1/bin/excel_cmp.bat $2 $5	
```
	
Only VBA Diff
```
[diff "xl"]
	command = git-xl-diff.exe
```

For VBA and Worksheet
```
[diff "mydiff"]
    command = tools/myDiff.sh
```
	
# .gitattributes
```
*.xla diff=mydiff
*.xlam diff=mydiff
*.xls diff=mydiff
*.xlsb diff=mydiff
*.xlsm diff=mydiff
*.xlsx diff=mydiff
*.xlt diff=mydiff
*.xltm diff=mydiff
*.xltx diff=mydiff
```