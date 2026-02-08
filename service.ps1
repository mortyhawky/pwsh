$pattern = "Acer*"
function as {
	$service = Get-Service -Name $pattern -ErrorAction SilentlyContinue
	if ($service) {
		$service |
			Select-Object Name, Status, StartType |
				Format-Table -Autosize
	} else {
	Write-Host "No $pattern services found." -ForegroundColor Yellow
	}
}

as
Set-Service -Name "AcerCCAgentSvis" -StartupType Disabled
Set-Service -Name "AcerDeviceEnablingServiceV2" -StartupType Disabled
Set-Service -Name "AcerDIAgentSvis" -StartupType Disabled
Set-Service -Name "AcerEzSvc" -StartupType Disabled
Set-Service -Name "AcerQAAgentSvis" -StartupType Disabled
Set-Service -Name "AcerServiceSvc" -StartupType Disabled
as

Get-Service -Name "Acer*" | 
	Select-Object -Property StartupType, Status, Name, DisplayName

Get-Service |
	Where-Object DisplayName -like "Acer*"

Get-CimInstance Win32_Service |
	Where-Object DisplayName -like "*Acer System Monitor*" |
		Select Name, DisplayName, StartMode, State

Get-Service -ErrorAction SilentlyContinue |
	Where-Object DisplayName -like "Acer*" |
		Select StartupType, Status, Name, DisplayName


