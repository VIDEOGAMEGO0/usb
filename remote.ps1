Invoke-WebRequest https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-windows-amd64.zip -OutFile "$env:TEMP\ngrok.zip"
Expand-Archive "$env:TEMP\ngrok.zip" -DestinationPath "$env:TEMP\ngrok"
& "$env:TEMP\ngrok\ngrok.exe" authtoken TUO_TOKEN
& "$env:TEMP\ngrok\ngrok.exe" tcp 22
