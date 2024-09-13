<#
        conditional statements
            - if statements
            - nested if statements
            - if-else statement
            - Nested if-else statement
            - Switch statement
#>
cls
$a = 2
if ( $a -eq 2){write-host "values are equal"
}

#ask user for the website check if its ping able or not.
#show pingable site ni green colour
#and non-pinable in red color
cls
$site = Read-Host "Enter the website name"


if(Test-Connection $site -Count 5){Write-Host "$site is ping able" -ForegroundColor Green}
else{Write-Host "$site in not ping able" -ForegroundColor Red}


