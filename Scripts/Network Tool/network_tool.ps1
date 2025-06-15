Write-Output "

______      _       ______         _   
|  _  \    | |      |  ___|       | |  
| | | |__ _| |_ __ _| |_ ___  _ __| |_ 
| | | / _  | __/ _  |  _/ _ \| '__| __|
| |/ / (_| | || (_| | || (_) | |  | |_ 
|___/ \__,_|\__\__,_\_| \___/|_|   \__|

"


Write-Output "`nThis tool scans the network to identify all connected devices and logs their details to 'network_monitor.txt' for monitoring purposes.`n"

nmap -sn 192.168.1.1/24

nmap -sn 192.168.1.1/24 >> .\network_monitor.txt

"`n`n" >> .\network_monitor.txt 
