# File: audit_repo.ps1 - Kiem tra toan dien repo hiepn9316-pixel/locket bang PowerShell
$BASE = "https://raw.githubusercontent.com/hiepn9316-pixel/locket/main"

$FILES = @(
  "All_In_One.sgmodule",
  "All_In_One.conf",
  "Egern_LockGold.yaml",
  "modules/Locket_minhhiep08.sgmodule",
  "js/deleteHeader.js",
  "js/Locket_Unlocked.js",
  "js/Locket_minhhiep08.js",
  "js/youtube.response.js",
  "assets/LocketGold.mobileconfig",
  "assets/locket.mobileconfig"
)

Write-Host "=== KIEM TRA CAU TRUC FILE TREN REPO hiepn9316-pixel/locket ===" -ForegroundColor Cyan
foreach ($f in $FILES) {
  $url = "$BASE/$f"
  try {
    $res = curl.exe -s -o /dev/null -w "%{http_code}" "$url"
    if ($res -eq "200") {
      Write-Host "[OK - 200] Da co dung vi tri: $f" -ForegroundColor Green
    } else {
      Write-Host "[THIEU/SAI TEN - $res] Khong tim thay: $f" -ForegroundColor Red
    }
  } catch {
    Write-Host "[LOI KET NOI] $f" -ForegroundColor Red
  }
}

Write-Host ""
Write-Host "=== KIEM TRA LINK NOI BO TRONG MODULE ===" -ForegroundColor Cyan
$mod_content = curl.exe -s "$BASE/All_In_One.sgmodule"

if ($mod_content -match "duyvinh09") {
  Write-Host "[CANH BAO] CDN van dang luu cache cu cua 'duyvinh09' (se het sau vai phut)!" -ForegroundColor Yellow
} else {
  Write-Host "[CHUAN] Khong con sot 'duyvinh09'!" -ForegroundColor Green
}

if ($mod_content -match "minhhiep08/Module_IOS") {
  Write-Host "[LOI] Van con sot link cu 'minhhiep08/Module_IOS'!" -ForegroundColor Red
}

if ($mod_content -match "hiepn9316-pixel/locket") {
  Write-Host "[CHUAN] Link script-path da tro dung ve hiepn9316-pixel/locket!" -ForegroundColor Green
}
