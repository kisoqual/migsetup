$migVarName;
$choice = Read-Host "Установить EntityFramework перед миграцией? (Y/N)";
    
function TurnMigratiON {
    param ($migParamName)
    Enable-Migrations;
    $migParamName = Read-Host "Введите имя переменной для миграции: ";
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