# Except for the Web Service example, all of the Magic8Ball answers use one of four text files uncommented below.
# The Web Service answer file is set in it's appsettings.json file.

#$file = "$($PSScriptRoot)\answers-simple.txt"
#$file = "$($PSScriptRoot)\answers-traditional.txt"
#$file = "$($PSScriptRoot)\answers-omg.txt"
$file = $PSScriptRoot + "\answers-funny.txt"

Write-Host "Magic 8 Ball says, pipeline-y,..." -ForegroundColor Green
Get-Content $file | Get-Random

# The next two programming-based examples rely on loading the content into a local var, so, here you go.

$content = Get-Content $file

Write-Host "Magic 8 Ball says, programatically..." -ForegroundColor Green
$rnd = Get-Random -Minimum 1 -Maximum $content.Count
$cnt = 0
foreach ($line in $content)
{
    $cnt++
    if ($cnt -ge $rnd) {
#        Write-Output $line
        $line
        break
    }
}

Write-Host "Magic 8 Ball says, better programatically..." -ForegroundColor Green
$content[$(Get-Random -Minimum 0 -Maximum ($content.Count-1))]

# The following assumes the Web service is up and running locally.  The port number may have to be changed here to work...

Write-Host "Magic 8 Ball says, from an Web Service..." -ForegroundColor Green
try
{
    Invoke-RestMethod -uri http://localhost:56299/api/values -Method Get
}
catch 
{
    Write-Warning "Error: $($_.Exception.Message)"
}
