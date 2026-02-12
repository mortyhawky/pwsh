Clear-Host
Write-Host "PowerShell Version: " -ForegroundColor Cyan -NoNewline
$PSVersionTable.PSVersion
Write-Host "Setting up variables..." -ForegroundColor Cyan
$projectName = "MyProject"
$buildConfiguration = "Release"

Write-Host "Variables set:" -ForegroundColor Green
Write-Host "Project Name: $projectName" -ForegroundColor Yellow
Write-Host "Build Configuration: $buildConfiguration" -ForegroundColor Yellow

