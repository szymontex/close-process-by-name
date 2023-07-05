C:\Users\ST2> $getget = gwmi win32_process | select Handle, CommandLine
C:\Users\ST2> $getpid = $getget | Where-Object {$_.CommandLine -match "INSERT_HERE"} | select -ExpandProperty Handle
C:\Users\ST2> foreach ($process in $getpid)
>> {
>>     Stop-Process -Id $process
>> }
