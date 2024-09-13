cls


$websites = Get-Content .\website.txt

#notepad.exe website.txt


foreach ($w in $websites){if(Test-Connection $w -Count 1 -ea SilentlyContinue){Write-Host $w -ForegroundColor Green}
                          else{
                          Write-Host $w -ForegroundColor Red
                          
                         }
}




