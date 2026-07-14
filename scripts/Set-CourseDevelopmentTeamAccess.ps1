param(
    [string]$Owner = "skunkworks-academy",
    [string]$Repository = "prod-101",
    [string]$TeamSlug = "course-development-team",
    [string]$ProjectTitle = "PROD-101 Course Production",
    [switch]$VerifyOnly
)

$ErrorActionPreference = "Stop"

if (-not (Get-Command gh -ErrorAction SilentlyContinue)) {
    throw "GitHub CLI is required. Install it with: winget install --id GitHub.cli"
}

gh auth status | Out-Host
Write-Host "The active identity requires organization Members read, repository Administration write, and Projects organization access." -ForegroundColor Yellow

Write-Host "Resolving team and current membership..." -ForegroundColor Cyan
$team = gh api "/orgs/$Owner/teams/$TeamSlug" | ConvertFrom-Json
$members = gh api --paginate "/orgs/$Owner/teams/$TeamSlug/members" | ConvertFrom-Json

if (-not $team.slug) {
    throw "Team '$TeamSlug' could not be resolved in organization '$Owner'."
}
if (-not $members -or $members.Count -eq 0) {
    throw "Team '$TeamSlug' has no visible members. Verify organization permissions and team membership."
}

Write-Host "Team: $($team.name) ($($team.slug))" -ForegroundColor Green
Write-Host "Visible members:" -ForegroundColor Green
$members | Sort-Object login | ForEach-Object { Write-Host " - $($_.login)" }

if (-not $VerifyOnly) {
    Write-Host "Granting the team Admin repository permission..." -ForegroundColor Cyan
    gh api --method PUT "/orgs/$Owner/teams/$TeamSlug/repos/$Owner/$Repository" -f permission=admin | Out-Null
}

$repoAccess = gh api "/orgs/$Owner/teams/$TeamSlug/repos/$Owner/$Repository" | ConvertFrom-Json
$repoPermission = $repoAccess.role_name
if (-not $repoPermission -and $repoAccess.permissions.admin) { $repoPermission = "admin" }

if ($repoPermission -ne "admin") {
    throw "Repository access verification failed. Expected admin; received '$repoPermission'."
}
Write-Host "Repository access verified: Admin" -ForegroundColor Green

Write-Host "Resolving the organization project..." -ForegroundColor Cyan
$projects = gh project list --owner $Owner --format json | ConvertFrom-Json
$project = $projects.projects | Where-Object { $_.title -eq $ProjectTitle } | Select-Object -First 1
if (-not $project) {
    throw "Project '$ProjectTitle' was not found for '$Owner'. Run scripts/Create-CourseProject.ps1 first."
}

$projectUrl = "https://github.com/orgs/$Owner/projects/$($project.number)"
Write-Host "Project found: $projectUrl" -ForegroundColor Green
Write-Host "" 
Write-Host "GitHub project access must be verified separately from repository access." -ForegroundColor Yellow
Write-Host "Open the project, select Settings > Manage access, add @$Owner/$TeamSlug, and set the role to Admin." -ForegroundColor Yellow
Write-Host "Then rerun this script with -VerifyOnly and attach the following to the access-control issue:" -ForegroundColor Yellow
Write-Host "  1. This repository Admin verification output." 
Write-Host "  2. The exported team-member list." 
Write-Host "  3. A screenshot of Project Settings > Manage access showing the team as Admin." 
Write-Host "  4. A test by a non-owner team member confirming repository, issue, PR and project access." 
Write-Host "" 
Write-Host "Do not paste tokens, cookies, recovery codes or unredacted payment/tax details into the issue." -ForegroundColor Red
