$StartDate = (Get-Date).AddDays(-1)
Get-VIEvent -Start $StartDate -Types Error -MaxSamples 50 |
Select-Object -Property CreatedTime,FullFormattedMessage