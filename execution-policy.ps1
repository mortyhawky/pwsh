Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Get-ExecutionPolicy
New-Line
return
Get-ExecutionPolicy -List
New-Line
Set-ExecutionPolicy Restricted
Get-ExecutionPolicy -List
New-Line
Set-ExecutionPolicy -ExecutionPolicy Restricted -Scope CurrentUser
Get-ExecutionPolicy -List

