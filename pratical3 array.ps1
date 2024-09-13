cls

#Arrays
$arr1 = (1,2,3,4,5)
$arr1
$arr1.GetType()

#ps way to define an array
$arr2 = @(6,7,8,9,0)
$arr2.GetType()
$arr2.Count
$arr2[0]
$arr2[-1]

#multi-0dimentional array
$arr3 = @(
        @("abc","xyz"),
        @(1,2,3),
        @(Get-Process)
)
$arr3.Count
$arr3[0][0]
$arr3[1][1]
$arr3[2][2]
