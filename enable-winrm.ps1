netsh advfirewall firewall add rule profile=any name="Allow WinRM Access" dir=in localport=5985 protocol=TCP action=allow
winrm quickconfig -quiet
winrm set winrm/config/service @{AllowUnencrypted="true"}
winrm set winrm/config/service/Auth @{Basic="true"}
