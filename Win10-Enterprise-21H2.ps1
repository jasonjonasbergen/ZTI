Write-Host -ForegroundColor Green "Starting OSDCloud ZTI RETSD 950"
Start-Sleep -Seconds 5

#Make sure I have the latest OSD Content
#Write-Host -ForegroundColor Green "Updating OSD PowerShell Module"
#Install-Module OSD -Force

#Write-Host -ForegroundColor Green "Importing OSD PowerShell Module"
#Import-Module OSD -Force

#Start OSDCloud ZTI
Write-Host -ForegroundColor Green "Start OSDCloud"
Start-OSDCloud -OSBuild "21H2" -OSLanguage en-us -OSEdition Enterprise -ZTI -OSVersion "Windows 10"

Write-Host -ForegroundColor Red "##############################"
Write-Host -ForegroundColor Blue "##############################"
Write-Host -ForegroundColor Green "***** REMOVE USB KEY... *****"
Write-Host -ForegroundColor Blue "##############################"
Write-Host -ForegroundColor Red "##############################"
$Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")

#Restart from WinPE
Write-Host -ForegroundColor Green "Restarting in 10 seconds!"
Start-Sleep -Seconds 10
wpeutil reboot
