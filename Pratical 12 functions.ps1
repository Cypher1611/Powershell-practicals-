# Examples of a basic function

function  get-message {
            
            Write-Host "hello world function called"
}

cls
get-message

#create a function that ask user to enter 2 no and show them the total of those number

cls
function add{
         
      [int] $num1 =  Read-Host "Enter the 1st number"
      [int]$num2 =  Read-Host "Enter the 2st number"

       $num3 = $num1 + $num2

       Write-Host "Totalof $num1 & $num2 is $num3"


       $num1 = $null
       $num2 = $null
       $num3 = $null
}
cls
add

#14
function add1{
[cmdletbinding()]        
        param(
          [int][parameter(mandatory=$true,HelpMessage="Enter a number")]$n1,
          [int][parameter(mandatory=$true,HelpMessage="Enter a number")]$n2
        )

        Write-Host "$n1 + $n2 = $($n1+$n2)"



}
cls
#add1 -n1 20000 -n2 5000
add1

#15
function get-validate{
[cmdletbinding()]
    param(
       [parameter(mandatory=$true)] 
       [validateset ("abhay", "cypher","Rory")]$msg
    )

    Write-Host "Hello $msg"
}

cls
get-validate -msg abhay


