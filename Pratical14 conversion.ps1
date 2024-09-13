#conversion
cls
Get-Service -Name a* | Select-Object Name, Status, StartType 


#cmdlets for conversion
Get-Command -Verb convertto

#coverting to html
Get-Service -Name s* | Select-Object Name, Status, StartType | ConvertTo-Html | Out-File a-services.html

#converting to Json
Get-Service -Name a* | Select-Object Name, Status, StartType | ConvertTo-Json | Out-File a-services.Json

#converting to Csv
Get-Service -Name a* | Select-Object Name, Status, StartType | ConvertTo-Csv| Out-File a-sevices.Csv
