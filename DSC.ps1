# to create the powershell code for dsc
Import-Module -Name PSDesiredStateConfiguration

configuration my-config{ 

       Node Member1{
            
            service custom1{
            
                Name = "BITS"
                Ensure = "present"
            
            }
            
             service custom2{

                Name = "WinRM"
                Ensure = "Present"
           }
      
       }

}



#to geneter the MOF file
my-config
#to apply the changes on remote machine(s
Start-DscConfiguration -path .\my-config

#to test
Test-DscConfiguration -CimSession Member1
