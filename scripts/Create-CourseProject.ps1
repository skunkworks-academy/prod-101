param(
    [string]$Owner = "skunkworks-academy",
    [string]$Repository = "prod-101",
    [string]$ProjectTitle = "PROD-101 Course Production"
)

$ErrorActionPreference = "Stop"

if (-not (Get-Command gh -ErrorAction SilentlyContinue)) {
    throw "GitHub CLI is required. Install it with: winget install --id GitHub.cli"
}

gh auth status | Out-Host
Write-Host "Ensure the active token has project scope. Run 'gh auth refresh -s project' if required." -ForegroundColor Yellow

$existingJson = gh project list --owner $Owner --format json
$existing = $existingJson | ConvertFrom-Json
$project = $existing.projects | Where-Object { $_.title -eq $ProjectTitle } | Select-Object -First 1

if (-not $project) {
    $createdJson = gh project create --owner $Owner --title $ProjectTitle --format json
    $project = $createdJson | ConvertFrom-Json
    Write-Host "Created project $ProjectTitle" -ForegroundColor Green
} else {
    Write-Host "Using existing project $ProjectTitle" -ForegroundColor Green
}

$projectNumber = $project.number
if (-not $projectNumber) { throw "Unable to determine project number." }

$fieldsJson = gh project field-list $projectNumber --owner $Owner --format json
$fields = ($fieldsJson | ConvertFrom-Json).fields

function Ensure-SingleSelectField {
    param([string]$Name, [string]$Options)
    if (-not ($fields | Where-Object { $_.name -eq $Name })) {
        gh project field-create $projectNumber --owner $Owner --name $Name --data-type SINGLE_SELECT --single-select-options $Options | Out-Host
    }
}

function Ensure-Field {
    param([string]$Name, [string]$Type)
    if (-not ($fields | Where-Object { $_.name -eq $Name })) {
        gh project field-create $projectNumber --owner $Owner --name $Name --data-type $Type | Out-Host
    }
}

Ensure-SingleSelectField -Name "Status" -Options "Backlog,Ready,In Progress,In Review,Blocked,Done"
Ensure-SingleSelectField -Name "Priority" -Options "P0 Critical,P1 High,P2 Normal,P3 Low"
Ensure-SingleSelectField -Name "Workstream" -Options "Governance,Architecture,Content,Design,Assessment,Recording,Editing,QA,Publishing,Marketing,ROI"
Ensure-SingleSelectField -Name "Module" -Options "Course-wide,M01,M02,M03,M04,M05,M06,M07,M08"
Ensure-SingleSelectField -Name "Stage Gate" -Options "Architecture Ready,Recording Ready,Media Ready,Release Candidate,Published,Lifecycle"
Ensure-Field -Name "Planned Hours" -Type NUMBER
Ensure-Field -Name "Actual Hours" -Type NUMBER
Ensure-Field -Name "Due Date" -Type DATE
Ensure-Field -Name "Start Date" -Type DATE
Ensure-Field -Name "ROI Impact" -Type TEXT
Ensure-Field -Name "Evidence" -Type TEXT

$issueUrls = gh issue list --repo "$Owner/$Repository" --state all --limit 300 --json url | ConvertFrom-Json
$prUrls = gh pr list --repo "$Owner/$Repository" --state all --limit 100 --json url | ConvertFrom-Json
$items = @($issueUrls) + @($prUrls)

foreach ($item in $items) {
    try {
        gh project item-add $projectNumber --owner $Owner --url $item.url | Out-Null
    } catch {
        Write-Warning "Could not add $($item.url): $($_.Exception.Message)"
    }
}

$projectUrl = "https://github.com/orgs/$Owner/projects/$projectNumber"
Write-Host "Project configured: $projectUrl" -ForegroundColor Cyan
Write-Host "Issues and pull requests were added or verified." -ForegroundColor Cyan
Write-Host "" 
Write-Host "IMPORTANT: GitHub CLI field creation does not prove that management views exist." -ForegroundColor Yellow
Write-Host "Configure and evidence all views specified in docs/PROJECT_VIEWS.md:" -ForegroundColor Yellow
Write-Host " - Executive Overview"
Write-Host " - Production Kanban"
Write-Host " - Module Pipeline"
Write-Host " - QA Queue"
Write-Host " - Blockers and Risks"
Write-Host " - Deadlines and Critical Path"
Write-Host " - Time and ROI"
Write-Host " - Marketing and Lifecycle"
Write-Host "" 
Write-Host "Then run scripts/Set-CourseDevelopmentTeamAccess.ps1 and attach the project, view and access evidence to the relevant P0 issues." -ForegroundColor Yellow
