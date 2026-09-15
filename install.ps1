$link = "https://github.com/BricksAreCool/mylotl/releases/latest/download/EquilotlCli.exe"

$outfile = "$env:TEMP\MylotlCli.exe"

Write-Output "Downloading installer to $outfile"

Invoke-WebRequest -Uri "$link" -OutFile "$outfile"

Write-Output ""

Start-Process -Wait -NoNewWindow -FilePath "$outfile"

# Cleanup
Remove-Item -Force "$outfile"
