netsh advfirewall firewall add rule profile=any name="Allow WinRM Access" dir=in localport=5985 protocol=TCP action=allow
cmd /c 'winrm quickconfig -quiet'
cmd /c 'winrm set winrm/config/service @{AllowUnencrypted="true"}'
cmd /c 'winrm set winrm/config/service/Auth @{Basic="true"}'
