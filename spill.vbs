Set objShell = CreateObject("Wscript.Shell")
For i = 0 to 255
    WScript.Sleep 10
    objShell.SendKeys "{NUMLOCK}"
Next
