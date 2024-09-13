<# 
    Loops
      -while loop
      -do-while loop
      -for loop
      -foreach loop
#>
#whiel loop
$arr1 = @("a","b","c")
$c = 0
cls
while ( $c -lt $arr1.Length){
    $arr1[$c]
    $c += 1
    sleep 1
}

#do-while loop
cls
$array =@("item1","item2","item3")
$counter = 0;

do {
    $array[$counter]
    $counter += 1
    sleep 1
 } while ($counter -lt $array.length)

 #for loop
 $aar3 = @(1,2,3,4,5)
 cls
 for ( $i = 0; $i -lt $aar3.Length; $i++ ){
     Write-Host "Index value $i is  $arr3[$i]"
}


#foreach loop
cls
$arr = @(1..10)
foreach($a in $arr ){
    write-host $a
}
