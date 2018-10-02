clear-host
$FGColor = "Gray"

Write-Host "String Parsing, interpolation, and formatting examples" -ForegroundColor $FGColor
Write-Host "First, some test var..." -ForegroundColor $FGColor 
$a = 1
$b = 2

Write-Host 'Expression Mode: $a etc' -ForegroundColor $FGColor
$a
$b

Write-Host 'Expression Mode: $a+$b' -ForegroundColor $FGColor
$a+$b

Write-Host 'Command Mode: Write-Host $a+$b' -ForegroundColor $FGColor
Write-Host $a+$b

Write-Host 'Command mode: Write-Host ($a+$b)' -ForegroundColor $FGColor
Write-Host ($a+$b)

Write-Host 'Expression Mode: "Interpolation: $a+$b"' -ForegroundColor $FGColor
"Interpolation: $a+$b"

Write-Host 'Expression Mode: "Interpolation: ($a+$b)"' -ForegroundColor $FGColor
"Interpolation: ($a+$b)"

Write-Host 'Expression Mode: "Interpolation: $($a+$b)" Force with subexpression.' -ForegroundColor $FGColor
"Interpolation: $($a+$b)"

#Write-Host 'Expression Mode: `'Interpolation: $($a+$b)`' Literal string.' -ForegroundColor $FGColor
#'Interpolation: $($a+$b)'

Write-Host "Here-String example." -ForegroundColor $FGColor
@"

------------------------
Hey Ma!...look at me...no hands....
`$($a+$b)=$($a+$b)
------------------------

"@;

Write-Host 'Format Operator: "{0}+{1}={2}" -f $a,$b,($a+$b)' -ForegroundColor $FGColor
"{0}+{1}={2}" -f $a,$b,($a+$b)

Write-Host 'Format Operator with format code: "{0:C}, {1:0000}" -f $a,$b' -ForegroundColor $FGColor
"{0:C}, {1:0000}" -f $a,$b