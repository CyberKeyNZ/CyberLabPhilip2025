Powershell-LabCommands

# Firewall off (baseline test)
netsh advfirewall set allprofiles state off

# Delete old rule
netsh advfirewall firewall delete rule name="Windows Remote Management (HTTP-In)"

# Add rule (PowerShell - successful version)
Remove-NetFirewallRule -Name "Windows Remote Management (HTTP-In)" -ErrorAction SilentlyContinue
New-NetFirewallRule -Name "WinRM-HTTP-In" -DisplayName "Windows Remote Management (HTTP-In)" -Enabled True -Direction Inbound -Action Allow -Protocol TCP -LocalPort 5985 -Profile Any -Group "Windows Remote Management"

# Firewall on
netsh advfirewall set allprofiles state on