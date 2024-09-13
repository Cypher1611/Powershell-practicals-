#$drives=@()
#$drives = (Get-PSDrive -PSProvider FileSystem) Root


$drives = @("C:\")
$file = "errorlogs.txt" #REad-host "enter file name to search:"

foreach($d in $drives){
    
    $retr = Get-ChildItem -Path $d -Filter $file -recurse -Force -ErrorAction SilentlyContinue

    if($retr){
        Write-Host "$($file)'s locatioan is : " -NoNewline
        Write-Host $retr.FullName -ForegroundColor Yellow
    }else{
        Write-Host "No such file is present in $d " -ForegroundColor Red
    }
}
