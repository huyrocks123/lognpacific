<#
.SYNOPSIS
    This script disables the Convenience PIN feature in Windows 10 in accordance with STIG WN10-CC-000370.

.NOTES
    Author          : Huy Tang
    LinkedIn        : https://www.linkedin.com/in/huy-t-892a51317/
    GitHub          : github.com/huyrocks123
    Date Created    : 2025-03-29
    Last Modified   : 2025-03-29
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-CC-000370

.TESTED ON
    Date(s) Tested  : 2025-03-29
    Tested By       : Huy Tang
    Systems Tested  : Windows 10 Pro
    PowerShell Ver. : 

.USAGE
    This script should be run with administrator privileges.
    Example syntax:
    PS C:\> .\remediation_WN10-CC-000370.ps1

# Disable Convenience PIN by modifying registry setting:
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "AllowDomainPINLogon" -Value 0 -Type DWord
# This disables the use of PIN for logging into Windows.

# Make sure the script handles errors and logs output appropriately.
# Ensure testing and validation is done post-remediation.
#>
