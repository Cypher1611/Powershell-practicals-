#objects

Get-Date | Get-Member

Get-Process | Get-Member

Get-Service | gm


#ps custom objects
$obj = New-object -TypeName psobject
$obj.GetType()
$obj | Get-Member

#adding a new member to the object
Add-Member -InputObject $obj -MemberType NoteProperty -Name "LTIM" -Value "35.2"
$obj | Get-Member

#adding multiple members to the objects
$newobject = @{
    prop1 = "value1"
    prop2 = "value2"
    prop3 = "value3"
    prop4 = "value4"
}

$obj2 = New-Object -TypeName psobject -Property $newobject

$obj2 | Get-Member
