Write-Host -ForegroundColor Green "Starting OSDCloud GUI - Windows 10"
Start-Sleep -Seconds 5

#Start OSDCloud ZTI
Write-Host -ForegroundColor Green "Start OSDCloud"
Start-OSDCloudGUI -OSBuild "21H2" -OSLanguage en-us -OSEdition Enterprise -OSVersion "Windows 10" -zti
Write-Host " "
Write-Host -ForegroundColor Red "                          ########################################################"
Write-Host -ForegroundColor Blue "                          ########################################################"
Write-Host -ForegroundColor Green "                          *****  REMOVE USB KEY... PRESS ANY KEY TO CONTINUE *****"
Write-Host -ForegroundColor Blue "                          ########################################################"
Write-Host -ForegroundColor Red "                          ########################################################"
$Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")

#Restart from WinPE
Write-Host -ForegroundColor Green "Restarting in 10 seconds!"
Start-Sleep -Seconds 10
wpeutil reboot
