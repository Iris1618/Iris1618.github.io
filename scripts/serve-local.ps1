$ErrorActionPreference = "Stop"

$ProjectRoot = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
Set-Location $ProjectRoot

if (-not (Get-Command ruby -ErrorAction SilentlyContinue)) {
  Write-Host "Ruby was not found on PATH." -ForegroundColor Red
  Write-Host "Install Ruby+Devkit from https://rubyinstaller.org/downloads/ first, then reopen the IDE/terminal." -ForegroundColor Yellow
  exit 1
}

if (-not (Get-Command bundle -ErrorAction SilentlyContinue)) {
  Write-Host "Bundler was not found. Installing bundler..." -ForegroundColor Yellow
  gem install bundler
}

if (-not (Test-Path (Join-Path $ProjectRoot "Gemfile.lock"))) {
  Write-Host "Installing Ruby gems for this site..." -ForegroundColor Yellow
  bundle install
}

Write-Host "Starting Jekyll at http://localhost:4000" -ForegroundColor Green
bundle exec jekyll serve -H 127.0.0.1 -P 4000 -w --config _config.yml
