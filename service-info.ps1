Get-Service -DisplayName "Windows*" |
    Sort-Object { $_.Status -ne 'Running' }, DisplayName |
    	Select-Object StartupType, Status, Name, DisplayName

