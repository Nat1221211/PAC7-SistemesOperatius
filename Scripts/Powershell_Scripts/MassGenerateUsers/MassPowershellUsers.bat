@echo off

$Users = Import-Csv -Path "./Users.csv"

foreach ($user in $Users) {
     powershell -Command "$Password = $user.pass New-LocalUser -Name $user.name -Password $Password (ConvertTo-SecureString -String $Password -AsPlainText -Force)"
}
