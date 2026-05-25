$ErrorActionPreference = "Stop"

$ProjectRoot = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
$DockerBin = "C:\Program Files\Docker\Docker\resources\bin"
$DockerPlugins = "C:\Program Files\Docker\cli-plugins"
$DockerExe = Join-Path $DockerBin "docker.exe"

if (-not (Test-Path $DockerExe)) {
  Write-Host "Docker was not found at $DockerExe." -ForegroundColor Red
  Write-Host "Please open Docker Desktop or reinstall Docker Desktop." -ForegroundColor Yellow
  exit 1
}

$env:PATH = "$DockerBin;$DockerPlugins;$env:PATH"

Write-Host "Starting Jekyll with Docker Compose..." -ForegroundColor Green
Write-Host "Site URL: http://localhost:4000" -ForegroundColor Green

& $DockerExe compose -f (Join-Path $ProjectRoot "docker-compose.yaml") up --build
