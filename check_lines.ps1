$in = 0
$ln = 0
$lines = Get-Content -Path 'So_tay_Thuc_hanh_May_hoc.md'
foreach ($line in $lines) {
    $ln++
    if ($line.StartsWith('```')) {
        if ($in -eq 0) { $in = 1 } else { $in = 0 }
    } else {
        if ($in -eq 1) {
            if ($line.Length -gt 85) {
                Write-Host 'Line' $ln 'Len' $line.Length
            }
        }
    }
}
