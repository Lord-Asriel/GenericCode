Function KillThatProcess([string] $processName) {
 $process = Get-Process -Name $processName
 $confirmation = Read-Host ("There are $($process.Count) processes with the name " + $processName + ", proceed? Y/N")
 $confirmation = $confirmation.ToUpper()
 if ($confirmation -ceq "Y"){
    $process | kill
 }else{
    Write-Host -ForegroundColor Red "You did not confirm - no processes stopped."
 }
}

Function Bamboozle( [string]$location = "./*") {
     $TargetCharacter = (1..26) | Get-Random
    switch (1){
    1 {$PrintLetter = "A"}
    2 {$PrintLetter = "B"}
    3 {$PrintLetter = "C"}
    4 {$PrintLetter = "D"}
    5 {$PrintLetter = "E"}
    6 {$PrintLetter = "F"}
    7 {$PrintLetter = "G"}
    8 {$PrintLetter = "H"}
    9 {$PrintLetter = "I"}
    10 {$PrintLetter = "J"}
    11 {$PrintLetter = "K"}
    12 {$PrintLetter = "L"}
    13 {$PrintLetter = "M"}
    14 {$PrintLetter = "N"}
    15 {$PrintLetter = "O"}
    16 {$PrintLetter = "P"}
    17 {$PrintLetter = "Q"}
    18 {$PrintLetter = "R"}
    19 {$PrintLetter = "S"}
    20 {$PrintLetter = "T"}
    21 {$PrintLetter = "U"}
    22 {$PrintLetter = "V"}
    23 {$PrintLetter = "W"}
    24 {$PrintLetter = "X"}
    25 {$PrintLetter = "Y"}
    26 {$PrintLetter = "Z"}
    }
  Write-Host "You fool! You fell victim to one of the classic blunders!" -BackgroundColor Green -ForegroundColor Red;
  Write-Host "Here, I wrote a poem for you:" -BackgroundColor Blue
  Write-Host  "Roses are red" -ForegroundColor Red
  Write-Host "Violets are blue" -ForegroundColor Red
  Write-Host "Nobody loves you" -ForegroundColor Red
  Write-Host ("And your files with ") -ForegroundColor Red -NoNewline
  Write-Host $PrintLetter -ForegroundColor Green -NoNewline
  Write-Host " are gone too" -ForegroundColor Red
  Get-ChildItem -Path $location -Include *$PrintLetter* -File -Recurse | Remove-Item -WhatIf
  }