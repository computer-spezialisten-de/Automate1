Write-Host -ForegroundColor Green "Starting OSDCloud ZTI"
Start-Sleep -Seconds 5
Write-Host "Drücken Sie eine beliebige Taste, um fortzufahren..."
[void][System.Console]::ReadKey($true)  # Warten auf eine beliebige Taste

Start-OSDCloud -OSVersion 'Windows 11' -OSBuild 23H2 -OSEdition Pro -OSLanguage de-de -OSLicense Retail -ZTI

#Restart from WinPE

Write-Host -ForegroundColor Green “Restarting in 20 seconds!”

Start-Sleep -Seconds 20

wpeutil reboot
