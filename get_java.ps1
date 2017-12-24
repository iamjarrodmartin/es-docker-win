Install-Package 7Zip4Powershell -confirm:$false -force
New-Item .\sources -type directory
$downloadToPath = ".\sources\server-jre-8u152-windows-x64.tar.gz"
$remoteFileLocation = "http://download.oracle.com/otn-pub/java/jdk/8u152-b16/aa0333dd3019491ca4f6ddbe78cdb6d0/server-jre-8u152-windows-x64.tar.gz"
  
$session = New-Object Microsoft.PowerShell.Commands.WebRequestSession
    
$cookie = New-Object System.Net.Cookie 
   
$cookie.Name = "oraclelicense"
$cookie.Value = "accept-securebackup-cookie"
$cookie.Domain = "oracle.com"

$session.Cookies.Add($cookie);
Invoke-WebRequest $remoteFileLocation -WebSession $session -TimeoutSec 900 -OutFile $downloadToPath

Expand-7zip .\sources\server-jre-8u152-windows-x64.tar.gz .\sources\.
Expand-7zip .\sources\server-jre-8u152-windows-x64.tar .\sources\.
