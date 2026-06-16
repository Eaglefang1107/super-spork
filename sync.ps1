# Sync with upstream: Sameer200506/merge-2
Write-Host "Syncing with upstream..." -ForegroundColor Cyan

# Add upstream remote if not already added
git remote add upstream https://github.com/Sameer200506/merge-2.git 2>$null

# Fetch latest from upstream
Write-Host "Fetching upstream..." -ForegroundColor Yellow
git fetch upstream main

# Merge upstream into local main
Write-Host "Merging upstream/main..." -ForegroundColor Yellow
git merge upstream/main -m "auto-merge: sync with upstream/main" --allow-unrelated-histories

# Push to your GitHub repo
Write-Host "Pushing to origin..." -ForegroundColor Yellow
git push origin main

Write-Host "Sync complete!" -ForegroundColor Green
