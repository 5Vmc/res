Set objShell = CreateObject("WScript.Shell")
Set objFSO = CreateObject("Scripting.FileSystemObject")

strCurrentDir = objShell.CurrentDirectory
strScript = strCurrentDir & "\install_unity_remote.ps1"

If objFSO.FileExists(strScript) Then
    ' 使用 powershell.exe -WindowStyle Hidden 运行
    ' -ExecutionPolicy Bypass 允许运行本地脚本
    cmd = "powershell.exe -WindowStyle Hidden -ExecutionPolicy Bypass -File """ & strScript & """"
    objShell.Run cmd, 0, True
    
    MsgBox "Installation process finished. Check install_ps.log for details.", 64, "Done"
Else
    MsgBox "Error: install_unity_remote.ps1 not found!", 16, "Error"
End If