# Clone a repository
function clone {
    $repoURL = Read-Host "Enter the repository URL to clone (e.g., https://github.com/user/repo.git)"
    git clone $repoURL
    Write-Host "Repository cloned successfully!" -ForegroundColor Green
}

# Commit changes with a message
function change {
    $commitMessage = Read-Host "Enter a message describing your changes (e.g., 'Updated README')"
    git commit -m $commitMessage
    Write-Host "Changes committed successfully!" -ForegroundColor Green
}

# Display help
function help {
    Write-Host "EasyGit Commands:" -ForegroundColor Cyan
    Write-Host "clone  : Copy a repository to your computer."
    Write-Host "change : Save your changes with a commit message."
    Write-Host "new    : Start a new repository."
}

# Initialize a new repository
function new {
    $repoPath = Read-Host "Enter a folder name to create your new repository"
    git init $repoPath
    Write-Host "New Git repository initialized at $repoPath!" -ForegroundColor Green
}
