
$WORKSPACE =  "workspace_dir"

Function dr {
    dotnet run
}

Function db {
    dotnet build
}
#Set-Alias -name dr -value dotnet_run
#Set-Alias -name db -value dotnet_build

Function npp{

    [CmdletBinding()]
    Param(
        [Parameter(Mandatory=$false)]
        [string] $Name
    )
    
    Process
    {
        start notepad++ $Name
    }
}

# this is to open file explorer in current directory
Function open_file_explorer{
    explorer.exe .
}

Set-Alias -name ll -value Get-ChildItem
Set-Alias -name ex -value explorer.exe
Set-Alias -name e. -value open_file_explorer
Set-Alias -name vi -value nvim
#Set-Alias -name npp -value open_npp
Set-Alias -name ctl -value services.msc

# KEY Bingdings

Set-PSReadLineKeyHandler -Chord 'Ctrl+x' -Function ViExit

