#switch statement
function test-website{
{
        if( Test-Connection google.com -Count 1 -ErrorAction SilentlyContinue){Write-Host "its pinging" -ForegroundColor Green
        }else{Write-Host "its NOT pinging" -ForegroundColor Red}
     }
}
    function get-myipaddress{
    (Get-NetIPAddress | Where-Object{$_.PrefixOrigin -eq "Dhcp"}).IPAddress 
    }
   function get-mymacaddress{
    (Get-NetAdapter| Where-Object{$_.Name -eq "wi-fi" }).MacAddress
    }
    function get-hostname{
    Write-Host "your computer name is : "$(HOSTNAME.EXE) 
    }
 cls

$ans = Read-Host "..."

switch($ans) {...}
