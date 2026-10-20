$base = "C:/Users/SUDIP/AndroidStudioProjects/MyApplication5/app/src/main/java/com/example/myapplication"
$dirs = @(
    "data/local",
    "data/remote",
    "data/mapper",
    "data/repository",
    "domain/model",
    "domain/repository",
    "domain/usecase",
    "presentation/ui",
    "presentation/viewmodel",
    "presentation/state",
    "di",
    "utils"
)
foreach ($dir in $dirs) {
    $fullPath = Join-Path $base $dir
    if (-not (Test-Path $fullPath)) {
        New-Item -ItemType Directory -Force -Path $fullPath | Out-Null
    }
}
Write-Host "Done"
