
#Start-Transcript -path .\PCinfo.txt
#stop-transcript


get-Date -displayhint date
write-host "PC Name :" $env:computername
write-host "Domain :" $env:userdomain

$os = Get-WmiObject -Class Win32_OperatingSystem
write-host "OS :" $os.Caption

$bios = Get-WmiObject win32_BIOS
write-host "BIOS :"$bios.Manufacturer

$cpu = Get-WmiObject Win32_Processor
write-host "CPU :" $cpu.name


$infoSelect = @(1,2,3,10,12,13,14,16,17,20,24,30)
$systeminfo = systeminfo

#for ($i = 1; $i -le 30 ; $i++)
#{
	#write-host $i ":" $systeminfo.get($i)
#}

for ($i = 0; $i -lt $infoSelect.count; $i++)
{
	
	write-host $infoSelect[$i] ":" $systeminfo.get($infoSelect[$i])			
}


