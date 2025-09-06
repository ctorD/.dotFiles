function y {
    $tmp = (New-TemporaryFile).FullName
    yazi $args --cwd-file="$tmp"
    $cwd = Get-Content -Path $tmp -Encoding UTF8
    if (-not [String]::IsNullOrEmpty($cwd) -and $cwd -ne $PWD.Path) {
        Set-Location -LiteralPath (Resolve-Path -LiteralPath $cwd).Path
    }
    Remove-Item -Path $tmp
}
# Only import if not already loaded
if (-not (Get-Module Terminal-Icons)) {
    Import-Module Terminal-Icons
}
oh-my-posh init pwsh --config ~/.config/oh-my-posh-config.json | Invoke-Expression