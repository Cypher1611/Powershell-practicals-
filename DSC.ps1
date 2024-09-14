# to create the powershell code for dsc
configuration my-config{ 

       Node Member1{
            
            service custom{
            
                Name = "BITS"
                Ensure = "Running"
            
            }
            
             service custom{

                Name = "BITS"
                Ensure = "Running"
           }
      
       }

}



#to geneter the MOF file
#to apply the changes on remote machine(s)
