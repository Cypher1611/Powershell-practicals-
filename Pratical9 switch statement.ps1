#switch statement
cls

$ans = Read-Host "
select from the options:
    1. to check internet connection
    2.to display Ip address
    3.to display Mac address
    4.Hostname
    5.Exit
"
Switch($ans){
    
    1{
        if( Test-Connection google.com -Count 1 -ErrorAction SilentlyContinue){Write-Host "its pinging" -ForegroundColor Green
        }else{Write-Host "its NOT pinging" -ForegroundColor Red}
     }
    2{(Get-NetIPAddress | Where-Object{$_.PrefixOrigin -eq "Dhcp"}).IPAddress}
    3{(Get-NetAdapter| Where-Object{$_.Name -eq "wi-fi" }).MacAddress}
    4{Write-Host "your computer name is : "$(HOSTNAME.EXE) }
    5{ break }
    Default{Write-Warning "invalid selection"}
}
