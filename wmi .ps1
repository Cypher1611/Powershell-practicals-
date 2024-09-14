#cim common information model

#wmi windows management instrumentation

Get-WmiObject -List
Get-WmiObject -List | measure
Get-WmiObject -List | Where-Object {$_.Name -match "^win32_"}
Get-WmiObject -List | Where-Object {$_.Name -match "^win32_"} | measure

Get-WmiObject -List | Where-Object {($_.Name -like "^win32_") -and ($_.Name -match "bios$")}
Get-WmiObject -List | Where-Object {$_.Name -match "bios$"}

Get-WmiObject -Class win32_BIOS
Get-WmiObject -Class win32_Computersystem
Get-WmiObject -Class win32_LogicalDisk
Get-WmiObject -Class win32_OperatingSystem

Get-WmiObject -Class win32_computersystem -ComputerName DC.Member1 | Format-Table


Get-WmiObject -Class win32_Computersystem
$bios = Get-WmiObject -Class win32_BIOS

Write-Host "your domain name is :"$(( Get-WmiObject -Class win32_Computersystem).domain)
Write-Host "your BIOS serial number is:"$($bios.serialNumber)
