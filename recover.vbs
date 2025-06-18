Set objShell = CreateObject("WScript.Shell")
WScript.Sleep 5000
objShell.Run "explorer.exe"
WScript.Sleep 2000
Set objPlayer = CreateObject("WMPlayer.OCX")
objPlayer.URL = "startup.wav"
objPlayer.Controls.play
WScript.Sleep 3000
msgbox "You saved me!", 64, "Message from Windows"
