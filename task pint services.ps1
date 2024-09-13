# print all the running services in gree and stopped services in red color
# Get all services
cls
$services = Get-Service

# Loop through each service and display its status with color
foreach ($service in $services) {
    if ($service.Status -eq 'Running') {
        Write-Host "$($service.DisplayName)" -ForegroundColor Green
        $service.DisplayName | Out-File running.txt -Append
    } else {
        Write-Host "$($service.DisplayName)" -ForegroundColor Red
        $service.Displayname | Out-File stopped.txt -Append
    }
}
