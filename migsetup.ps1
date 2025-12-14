$migVarName;
$choice = Read-Host "Установить EntityFramework перед миграцией? (Y/N)";
    
function Menu {
    Write-Output "`n----Мастер миграции Code First в EF----";
    Write-Output "1. Включение миграции`n2. Добавление миграции";
    $choice = Read-Host;
    if ($choice -eq "1") {
        TurnMigratiON($migVarName);
        Pause;
        exit;
    }
    if ($choice -eq "2") {
        AddMigration($migVarName);
        Pause;
        exit;
    }
    if ($choice -eq "3") {
        Pause;
        exit;
    }
    else {
        cls;
        Write-Output "Неверный ввод!";
        Menu;
    }
}  

function TurnMigratiON {
    param ($migParamName)
    Enable-Migrations;
    $migParamName = Read-Host "Введите имя переменной для миграции: ";
    Add-Migration $migParamName;
    Update-DataBase;
}

function AddMigration {
    param ($migInnerVarName)
    $migInnerVarName = Read-Host "Введите имя переменной для миграции: ";
    Add-Migration $migInnerVarName;
    Update-DataBase;
}

if ($choice -eq "y") {
    Install-Package EntityFramework;
    Menu;
}
else {
    Menu;
}
