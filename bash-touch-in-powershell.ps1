function Touch {
    param (
        [Parameter(Mandatory = $true)]
        [string]$FileName
    )

    $FilePath = Join-Path -Path (Get-Location) -ChildPath $FileName

    if (Test-Path $FilePath) {
        (Get-Item $FilePath).LastWriteTime = Get-Date
    } else {
        New-Item -ItemType File -Path $FilePath | Out-Null
    }
}
