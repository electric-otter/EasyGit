Write-Output "help for a list of commands" | Get-Member
function clone {
       git clone Read-Host
}
function change {
    git commit Read-Host
}
function help {
   Write-Output "clone: Creates the same repository for editing" | Get-Member
   Write-Output "change: Saves the repository" | Get-Member
}
function new {
    git init Read-Host
}
