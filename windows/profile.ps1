if ($host.Name -eq 'ConsoleHost')
{
    Import-Module PSReadline
    Set-PSReadlineOption -EditMode Emacs
    Set-PSReadlineOption -BellStyle None
}

New-Alias which Get-Command

. $PSScriptRoot\_rg.ps1

$env:FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*" --glob "!.svn/*" --glob "!*/target/*"'
