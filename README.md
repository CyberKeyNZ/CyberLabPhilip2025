README

# Philip’s Cybersecurity Lab
   Secured a Windows Server 2022 endpoint in VirtualBox:
- Configured WinRM (port 5985) for remote access with PowerShell and    `netsh`.
- Set up Active Directory domain (`mylab.local`) for authentication.
- Resolved firewall issues to enable secure shell (`evil-winrm`).
- Tested with `nmap -p 5985 10.0.0.2` - Result: "5985/tcp open wsman".
   See `LabCommands.ps1` for full steps—skills align with MD-102    objectives.