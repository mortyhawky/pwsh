Clear-Host
Write-Host "Hello, World! " -NoNewline -ForegroundColor Cyan
Write-Host "Welcome to PowerShell scripting." -ForegroundColor Green
Write-Host "This is a simple script to demonstrate basic PowerShell commands." -BackgroundColor DarkBlue

# Define a variable
$greeting= "Hello, PowerShell!"
# Output the variable
Write-Host $greeting -BackgroundColor Black -ForegroundColor Yellow

# Get the current date and time
$currentDateTime = Get-Date
Write-Host "Current Date and Time: $currentDateTime" -BackgroundColor DarkGreen -ForegroundColor White
Write-Host "   " -NoNewline -BackgroundColor Black
$mySystemInfo = Get-ComputerInfo
Write-Host "System Information:" -BackgroundColor DarkRed -ForegroundColor White
Write-Host "Operating System: $($mySystemInfo.OSName)" -BackgroundColor Black -ForegroundColor Magenta
#Write-Host "OS Version: $($mySystemInfo.OSVersion)" -BackgroundColor Black -ForegroundColor Magenta
$myInfo = $mySystemInfo | Select-Object OsName, OSVersion, OSArchitecture
Write-Host $myInfo | Select-String -Pattern "asdf" 
Write-Host "----------////-------------------" -BackgroundColor Black -ForegroundColor White
Write-Host "Thank you for running this script!" -BackgroundColor DarkCyan -ForegroundColor White
$mySystemInfo | Select-Object OsName
