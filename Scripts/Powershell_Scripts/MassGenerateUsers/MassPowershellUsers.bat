@echo off

powershell -NoProfile -ExecutionPolicy Bypass -Command "& { $csv = Import-Csv '%~dp0Users.csv'; foreach ($u in $csv) {$passw = $u.pass; $pass = ConvertTo-SecureString $passw -AsPlainText -Force; $nombre = $u.name; New-LocalUser -Name $nombre -Password $pass -Description 'CSv User'}}"
