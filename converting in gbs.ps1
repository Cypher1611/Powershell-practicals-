cls
Get-WmiObject -Class win32_LogicalDisk | Select-Object DeviceID , `
@{label = "freespace (in GBS)" ; exp ={[math]::Round(($_.Freespace/1GB),2)}}, `
@{label = "Size (in GBS)" ; exp ={[math]::Round(($_.Size/1GB),2)}}
