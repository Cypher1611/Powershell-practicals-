#xml
#converting to xml

Get-Service -Name a* | Select-Object Name, Status, StartType |Export-clixml s-services.xml

#fetching the data from xml file
[xml]$xmldata = Get-Content "C:\Users\10745926\Downloads\books.xml"

#checking the data type of xml variable
$xmldata.GetType()
$xmldata
$xmldata.catalog
$xmldata.catalog.book
$xmldata.catalog.book | Format-Table
$xmldata.catalog.book | Select-Object id
$xmldata.catalog.book | Select-Object id, author, title, price, genre | Format-Table

$xmldata.catalog.book | Where-Object {$_.price -eq "5.95"} |Select-Object author, title, description

$xmldata.catalog.book| Where-Object {$_.price -eq "5.95"} |Select-Object author, title, description| Format-Table -AutoSize -Wrap
