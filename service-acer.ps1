#Get-Service Acer*
#New-Line
Get-Service -DisplayName Acer* |
    Sort-Object DisplayName |
    	Select-Object DisplayName, Name, StartupType, Status |
			Format-Table -Autosize
New-Line

