Write-Host -ForegroundColor Green "Starting OSDCloud ZTI"
Start-Sleep -Seconds 5
Write-Host "Druecken Sie eine beliebige Taste, um fortzufahren..."
Write-Host "Beachten Sie das die gesammte Festplatte Formatiert wird, so mit alle Daten auf dem PC gelöscht. Sollten dies nicht umgesetzt werden, PC Herunterfahren und USB-Stick entfernen."
[void][System.Console]::ReadKey($true)  # Warten auf eine beliebige Taste

Start-OSDCloud -OSVersion 'Windows 11' -OSBuild 22H2 -OSEdition Pro -OSLanguage de-de -OSLicense Retail -ZTI

#Restart from WinPE

Write-Host -ForegroundColor Green “Restarting in 20 seconds!”

Start-Sleep -Seconds 20

wpeutil reboot
