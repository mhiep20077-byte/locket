#!/usr/bin/env bash
# File: audit_repo.sh - Kiểm tra toàn diện repo hiepn9316-pixel/locket
BASE="https://raw.githubusercontent.com/hiepn9316-pixel/locket/refs/heads/main"

FILES=(
  "All_In_One.sgmodule"
  "All_In_One.conf"
  "Egern_LockGold.yaml"
  "modules/Locket_minhhiep08.sgmodule"
  "js/deleteHeader.js"
  "js/Locket_Unlocked.js"
  "js/Locket_minhhiep08.js"
  "js/youtube.response.js"
  "assets/LocketGold.mobileconfig"
  "assets/locket.mobileconfig"
  "assets/gold_welcome.jpg"
)

echo "=== KIỂM TRA CẤU TRÚC FILE TRÊN REPO hiepn9316-pixel/locket ==="
for f in "${FILES[@]}"; do
  status=$(curl -s -o /dev/null -w "%{http_code}" "$BASE/$f")
  if [ "$status" == "200" ]; then
    echo "[OK - 200] Đã có đúng vị trí: $f"
  else
    echo "[THIẾU/SAI TÊN - $status] Không tìm thấy: $f (Link: $BASE/$f)"
  fi
done

echo ""
echo "=== KIỂM TRA LINK NỘI BỘ TRONG MODULE ==="
mod_content=$(curl -s "$BASE/All_In_One.sgmodule")
if echo "$mod_content" | grep -q "duyvinh09"; then
  echo "[LỖI] Vẫn còn sót tên 'duyvinh09' trong All_In_One.sgmodule!"
fi
if echo "$mod_content" | grep -q "minhhiep08/Module_IOS"; then
  echo "[LỖI] Vẫn còn sót link cũ 'minhhiep08/Module_IOS' thay vì 'hiepn9316-pixel/locket'!"
fi
if echo "$mod_content" | grep -q "hiepn9316-pixel/locket"; then
  echo "[CHUẨN] Link script-path đã trỏ đúng về hiepn9316-pixel/locket!"
fi
