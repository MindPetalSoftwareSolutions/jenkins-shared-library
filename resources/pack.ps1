"&" "C:\Program Files (x86)\UiPath\Studio\UiRobot.exe" pack "$env:WORKSPACE\project.json" -o "$env:JENKINS_HOME\jobs\$env:JOB_NAME\builds\$env:BUILD_NUMBER" -VERBOSE & "C:\Program Files (x86)\UiPath\Studio\UiRobot.exe" pack "$env:WORKSPACE\project.json" -o "$env:JENKINS_HOME\jobs\$env:JOB_NAME\builds\$env:BUILD_NUMBER" 2> error.txt
Get-Content -Path error.txt