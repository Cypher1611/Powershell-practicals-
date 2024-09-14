Get-PSDrive

Get-PSDrive -PSProvider Registry

Get-ChildItem HKCU:\


#creating a file in hkcu
New-Item -Path HKCU:\ -Name "TestLTIb35.2" -force

#creating a registory in abv folder
New-ItemProperty -Path HKCU:\TestLTIb35.2 -Name "child" -Value "this is child" -force

#changing the creating the valve of the key
Set-ItemProperty -Path HKCU:\TestLTIb35.2 -Name "child" -Value "the last day " -Force

#removing reg key
Remove-ItemProperty -Path HKCU:\TestLTIb35.2 -Name "child" -Force

#removing the reg folder
Remove-Item -Path HKCU:\TestLTIb35.2 -Force
