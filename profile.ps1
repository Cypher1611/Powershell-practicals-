# To create a $profile if it is not exists
cls
if(Test-Path $profile){write-host "file is present" -ForegroundColor Green
}else{Write-Host "file is not present" -ForegroundColor Red
New-Item -Path $profile -ItemType file -Force
}
