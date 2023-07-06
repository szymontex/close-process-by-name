$getprocesses = gwmi win32_process | select Handle, CommandLine
$getpid = $getprocesses | Where-Object {$_.CommandLine -match "INSERT_HERE"} | select -ExpandProperty Handle
foreach ($process in $getpid)
{
    Stop-Process -Id $process
}
