# Get-NextWeekDate

function Get-NextWeekDate{

    $nextweek = (Get-Date).AddDays(7)
    Write-Output $nextweek
}

Export-ModuleMember -Function Get-NextWeekDate