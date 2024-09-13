#conditions


<#Task - ask user to input a service name and check 
if the service is running or stopped
#>
cls

$ans = Read-Host "Enter the service name to check status"
$val = Get-Service -Name $ans

Write-Host "$($val.Name) is $($val.Status)" -ForegroundColor Yellow

#Task 2 - list all running services

cls
Get-Service |`
Where-Object {$_.Status -eq "Running" } |`
select-object Displayname
