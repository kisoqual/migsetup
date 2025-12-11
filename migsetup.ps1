$migVarName;
$choice = Read-Host "Install EntityFramework before migration? (Y/N)";
    
function TurnMigratiON {
    param ($migParamName)
    Enable-Migrations;
    $migParamName = Read-Host "Enter variable name for migration: ";
    Add-Migration $migParamName;
    Update-DataBase;
}

if ($choice -eq "y") {
    Install-Package EntityFramework;
    TurnMigratiON($migVarName);
    Pause;
}
else {
    TurnMigratiON($migVarName);
    Pause;
}
