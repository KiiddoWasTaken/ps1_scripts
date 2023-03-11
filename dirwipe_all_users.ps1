$users = Get-ChildItem "C:\Users" -Directory
$dirName = "Outlook"

foreach ($user in $users) {
    $dirPath = Join-Path $user.FullName "AppData\Local\Microsoft\$dirName"
    if (Test-Path $dirPath) {
        Remove-Item "$dirPath\*" -Recurse -Force
    }
}
