Write-Host  -ForegroundColor Green "Starting OSDCloud ZTI RETSD 1253"
Start-Sleep -Seconds 5

#Make sure I have the latest OSD Content
Write-Host  -ForegroundColor Green "Updating OSD PowerShell Module"
Install-Module OSD -Force

Write-Host  -ForegroundColor Green "Importing OSD PowerShell Module"
Import-Module OSD -Force

#Start OSDCloud ZTI the RIGHT way
Write-Host  -ForegroundColor Green "Start OSDCloud"
Start-OSDCloud -OSBuild "21H2" -OSEdition Enterprise -ZTI -OSVersion "Windows 10" -Restart

#Restart from WinPE
#Write-Host  -ForegroundColor Green "Restarting in 20 seconds!"
#Start-Sleep -Seconds 20
Write-Host "Press any key to continue..."
$Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
wpeutil reboot
