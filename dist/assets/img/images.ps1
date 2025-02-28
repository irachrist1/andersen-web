$imagePath = "C:\Users\ctonn\Videos\testing-env2-main\testing-env2-main\dist\assets\img"
Set-Location -Path $imagePath

Get-ChildItem -Filter "* (Large).png" | ForEach-Object {
    $newName = $_.Name -replace " \(Large\)", ""
    Rename-Item -Path $_.FullName -NewName $newName -Force
    Write-Host "Renamed: $($_.Name) -> $newName"
}