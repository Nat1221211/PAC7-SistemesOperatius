@echo off

powershell -ExecutionPolicy Bypass -Command "Import-Csv 'Users.csv' | ForEachObject {New-LocalUser -Name $_.Name -Password (ConvertTo-SecureString $_.pass -AsPlainText -Force) -Description "CSv User"}"
