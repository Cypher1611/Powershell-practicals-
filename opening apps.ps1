cls
$apps = @("notepad++","calc","excel" ,"chrome","winword","mspaint")

foreach ($app in $apps) {
    Start-Process $app
}
