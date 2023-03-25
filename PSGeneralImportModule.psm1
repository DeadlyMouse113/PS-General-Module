# Universal psm file
# Requires -Version 5.0

# Get functions files
$Functions = @( Get-ChildItem -Path $PSScriptRoot\scripts\*.ps1 -ErrorAction SilentlyContinue)

# Dot source the files
Foreach($import in @($Functions))
{
    Try{
        . $import.fullname
    }
    Catch{
        Write-Error -Message "Failed to import function $($import.fullname): $_"
    }

}

# Export everything in the public folder
Export-ModuleMember -Function * -Cmdlet * -Alias *
