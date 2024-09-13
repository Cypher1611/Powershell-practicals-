# Function to display date, time, and day with blinking effect
function Show-DateTime {
    while ($true) {
        # Clear the console
        Clear-Host

        # Get the current date, time, and day
        $currentDate = Get-Date -Format "dddd, MMMM dd, yyyy"
        $currentTime = Get-Date -Format "HH:mm:ss"

        # Display the date, time, and day
        Write-Host "Date: $currentDate" -ForegroundColor Yellow
        Write-Host "Time: $currentTime" -ForegroundColor Cyan

        # Wait for half a second
        Start-Sleep -Milliseconds 900

        # Clear the console
        Clear-Host

        # Wait for half a second
        Start-Sleep -Milliseconds 900
    }
}

# Run the function
Show-DateTime
