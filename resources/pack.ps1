Write-Output "`"$env:WORKSPACE`""
& "C:\Program Files (x86)\UiPath\Studio\UiRobot.exe" pack "$env:WORKSPACE\project.json" -o "$env:WORKSPACE@tmp\Output"