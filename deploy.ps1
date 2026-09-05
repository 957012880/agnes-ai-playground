# GitHub API Push Script for Agnes AI Playground
$ErrorActionPreference = "Continue"

$GITHUB_TOKEN = "YOUR_GITHUB_TOKEN"
$REPO_NAME = "agnes-ai-playground"
$REPO_URL = "https://api.github.com/user/repos"
$BRANCH = "main"
$PROJECT_DIR = "E:\workbuddy\chengxu"

Write-Host "=== Agnes AI Playground - GitHub & Cloudflare Deployment ===" -ForegroundColor Cyan
Write-Host ""

# Step 1: Create GitHub Repository
Write-Host "[1/5] Creating GitHub repository..." -ForegroundColor Yellow
$headers = @{
    "Authorization" = "token $GITHUB_TOKEN"
    "Accept" = "application/vnd.github.v3+json"
    "X-GitHub-Api-Version" = "2022-11-28"
}
$body = @{
    name = $REPO_NAME
    description = "Agnes AI Playground - 全模态 AI 工作台"
    private = $false
} | ConvertTo-Json -Compress

try {
    $response = Invoke-RestMethod -Uri $REPO_URL -Method Post -Headers $headers -Body $body -TimeoutSec 30
    Write-Host "✅ Repository created: https://github.com/$($response.full_name)" -ForegroundColor Green
    $OWNER = $response.owner.login
} catch {
    Write-Host "❌ Failed to create repository:" $_.Exception.Message -ForegroundColor Red
    exit 1
}

# Step 2: Add git remote and push
Write-Host ""
Write-Host "[2/5] Adding git remote and pushing code..." -ForegroundColor Yellow
Set-Location $PROJECT_DIR

# Remove old remote if exists
git remote remove origin 2>$null

# Add new remote with token
git remote add origin "https://$GITHUB_TOKEN@github.com/$OWNER/$REPO_NAME.git"

# Push
try {
    & git push -u origin main 2>&1 | ForEach-Object { Write-Host $_ }
    Write-Host "✅ Code pushed to GitHub" -ForegroundColor Green
} catch {
    Write-Host "❌ Git push failed:" $_.Exception.Message -ForegroundColor Red
    exit 1
}

# Step 3: Verify push
Write-Host ""
Write-Host "[3/5] Verifying repository..." -ForegroundColor Yellow
$repoCheck = Invoke-RestMethod -Uri "https://api.github.com/repos/$OWNER/$REPO_NAME" -Headers $headers -TimeoutSec 15
Write-Host "✅ Repository URL: https://github.com/$OWNER/$REPO_NAME" -ForegroundColor Green
Write-Host "   Default branch: $($repoCheck.default_branch)" -ForegroundColor Gray

# Step 4: Cloudflare Pages setup instructions
Write-Host ""
Write-Host "[4/5] Cloudflare Pages Setup Instructions:" -ForegroundColor Yellow
Write-Host ""
Write-Host "Method 1: Manual Setup (Recommended)" -ForegroundColor Cyan
Write-Host "  1. Go to https://dash.cloudflare.com/pages" -ForegroundColor White
Write-Host "  2. Click 'Create project' -> 'Connect to Git'" -ForegroundColor White
Write-Host "  3. Select GitHub and choose '$REPO_NAME'" -ForegroundColor White
Write-Host "  4. Framework preset: None" -ForegroundColor White
Write-Host "  5. Build command: (leave empty)" -ForegroundColor White
Write-Host "  6. Build output directory: ." -ForegroundColor White
Write-Host "  7. Click 'Save and Deploy'" -ForegroundColor White
Write-Host ""
Write-Host "Method 2: Using Cloudflare API" -ForegroundColor Cyan
Write-Host "  You can use the Cloudflare API token to create the project automatically." -ForegroundColor White

# Step 5: Summary
Write-Host ""
Write-Host "[5/5] Deployment Summary:" -ForegroundColor Yellow
Write-Host ""
Write-Host "GitHub Repository: https://github.com/$OWNER/$REPO_NAME" -ForegroundColor Green
Write-Host "Cloudflare Pages:  Connect via dashboard at https://dash.cloudflare.com/pages" -ForegroundColor Green
Write-Host ""
Write-Host "=== Next Steps ===" -ForegroundColor Cyan
Write-Host "1. The code has been pushed to GitHub" -ForegroundColor White
Write-Host "2. Connect to Cloudflare Pages using the repository" -ForegroundColor White
Write-Host "3. Set custom domain if needed (e.g., agnes.yourdomain.com)" -ForegroundColor White
Write-Host ""
