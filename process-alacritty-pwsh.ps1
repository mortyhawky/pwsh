Get-Process alacritty |
  Where-Object MainWindowHandle -ne 0 |
  Select-Object Id, MainWindowTitle, MainWindowHandle

