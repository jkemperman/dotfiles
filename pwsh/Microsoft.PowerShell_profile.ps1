Set-Alias -Name g -Value git

Import-Module posh-git
$GitPromptSettings.DefaultPromptAbbreviateHomeDirectory = $true
$GitPromptSettings.DefaultPromptWriteStatusFirst = $true
