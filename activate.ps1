Add-Type -TypeDefinition @"
using System;
using System.Runtime.InteropServices;

public class AudioControl {
    [DllImport("user32.dll")]
    public static extern IntPtr SendMessageW(
        IntPtr hWnd, uint Msg, IntPtr wParam, IntPtr lParam
    );
}
"@

# wloczenie filmika 
Start-Process "https://www.youtube.com/watch?v=dQw4w9WgXcQ"

$wshell = New-Object -ComObject WScript.Shell
1..50 | ForEach-Object {
    $wshell.SendKeys([char]175)
}

Write-Host "Громкость установлена на максимум."