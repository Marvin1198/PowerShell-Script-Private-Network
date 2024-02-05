# Get all network connections
$networkConnections = Get-NetConnectionProfile

# Loop through each network connection and set the profile to private
foreach ($connection in $networkConnections) {
    $connectionName = $connection.Name
    Write-Host "Setting network profile for '$connectionName' to Private..."
    
    Set-NetConnectionProfile -InterfaceAlias $connection.InterfaceAlias -NetworkCategory Private

    Write-Host "Network profile for '$connectionName' set to Private."
}
