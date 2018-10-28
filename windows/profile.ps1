if ($host.Name -eq 'ConsoleHost')
{
    Import-Module PSReadline
    Set-PSReadlineOption -EditMode Emacs
    Set-PSReadlineOption -BellStyle None
}

New-Alias which Get-Command

. $PSScriptRoot\_rg.ps1

# Better use "Edit environment variables for your account" instead of settign them here.

# $env:FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*" --glob "!.svn/*" --glob "!*/target/*"'
# $env:FZF_DEFAULT_COMMAND='rg --files --no-ignore --glob "!**/dist*" --glob "!**/target"'
$env:FZF_DEFAULT_COMMAND='rg --files --no-ignore'
