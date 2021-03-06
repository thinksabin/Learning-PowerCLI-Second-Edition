Get-VIEvent -MaxSamples 500 |
Select-Object -Property @{
  Name = "TypeName"
  Expression = {$_.GetType().Name}
}|
Sort-Object -Property TypeName -Unique |
Format-Wide -Property TypeName -Column 2