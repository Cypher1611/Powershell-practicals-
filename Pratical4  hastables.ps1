cls
#Hashtables - key -value pairs
$ht1 = @{}
$ht1.GetType()

#unordered hashtables
$ht2 = @{Name="Abhay" ; client="ltimindtree" ; Batch="35.2"}
$ht2


#ordered hashtables
$ht3 =[ordered] @{Name="Abhay" ; client="ltimindtree" ; Batch="35.2"}
$ht3

$ht3.keys
$ht3.values
$ht3.count

#Adding the element to HT
$ht3.Add("classroom","kanchnar")
$ht3
#Modifying element from HT
$ht3["Name"] = "Abhaysing Rajput"
$ht3
#Deleting element from HT
$ht3.Remove("Batch")
$ht3



Get-Service | Select-Object name, `
displayname, `
@{l="report" ; e={$_.status}} `
