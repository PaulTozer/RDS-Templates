<#

.SYNOPSIS
Creating Hostpool and add sessionhost servers to existing/new Hostpool.

.DESCRIPTION
This script add sessionhost servers to existing/new Hostpool
The supported Operating Systems Windows Server 2016.

.ROLE
Readers

#>
param(
    [Parameter(mandatory = $true)]
    [string]$param
)

#$ScriptPath = [system.io.path]::GetDirectoryName($PSCommandPath)

throw 'err'

Write-Debug 'Write-Debug'
Write-Host 'Write-Host'
Write-Information 'Write-Information'
Write-Output 'Write-Output'
Write-Verbose 'Write-Verbose'
Write-Warning 'Write-Warning'
Write-Error '[new] Write-Error' -ErrorAction 'Continue'

# Setting ErrorActionPreference to stop script execution when error occurs
$ErrorActionPreference = "Stop"

Write-Debug 'Write-Debug'
Write-Host 'Write-Host'
Write-Information 'Write-Information'
Write-Output 'Write-Output'
Write-Verbose 'Write-Verbose'
Write-Warning 'Write-Warning'
# Write-Error 'Write-Error' -ErrorAction 'Continue'

# Getting fqdn of rdsh vm
$SessionHostName = (Get-WmiObject win32_computersystem).DNSHostName + "." + (Get-WmiObject win32_computersystem).Domain
Write-Log -Message "Getting fully qualified domain name of RDSH VM: $SessionHostName"
Write-Output -Message "Getting fully qualified domain name of RDSH VM: $SessionHostName"

Write-Host 'end'