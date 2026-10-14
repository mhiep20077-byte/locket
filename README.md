# 💛 Locket Gold & YouTube Premium by minhhiep08

Kho lưu trữ cấu hình và module mở khóa **Locket Gold** & **YouTube Premium** dành cho **Shadowrocket**, **Surge**, **Loon**, và **Egern** trên iOS.

---

## 🚀 Hướng dẫn cài đặt nhanh trên Shadowrocket

### 1. Bật giải mã HTTPS (HTTPS Decryption)
> *Bắt buộc nếu chưa từng cài chứng chỉ CA của Shadowrocket:*
1. Vào **Shadowrocket** $\rightarrow$ **Cài đặt (Settings)** $\rightarrow$ **Giải mã HTTPS (HTTPS Decryption)**.
2. Bật công tắc **Giải mã HTTPS** $\rightarrow$ **Tạo chứng chỉ mới (Generate New CA)** $\rightarrow$ **Cài đặt chứng chỉ vào hệ thống**.
3. Vào **Cài đặt iPhone** $\rightarrow$ **Đã tải về hồ sơ** $\rightarrow$ **Cài đặt**.
4. Vào **Cài đặt iPhone** $\rightarrow$ **Cài đặt chung** $\rightarrow$ **Giới thiệu** $\rightarrow$ **Cài đặt tin cậy chứng chỉ** $\rightarrow$ **Bật công tắc tin cậy cho Shadowrocket**.

---

### 2. Thêm Module vào Shadowrocket (Khuyên dùng)

* **Gói tổng hợp (Locket Gold + YouTube Premium):**
  ```text
  https://raw.githubusercontent.com/hiepn9316-pixel/locket/main/Locket_YouTube.sgmodule
  ```

* **Gói riêng lẻ (Chỉ Locket Gold):**
  ```text
  https://raw.githubusercontent.com/hiepn9316-pixel/locket/main/modules/Locket_minhhiep08.sgmodule
  ```

* **Tệp cấu hình hoàn chỉnh (.conf):**
  ```text
  https://raw.githubusercontent.com/hiepn9316-pixel/locket/main/Locket_YouTube.conf
  ```

---

## 📁 Cấu trúc thư mục

```text
locket/
├── Locket_YouTube.sgmodule         # Module tích hợp Locket Gold & YouTube Premium
├── Locket_YouTube.conf             # Tệp cấu hình Shadowrocket đầy đủ
├── Egern_LockGold.yaml             # Cấu hình dành cho ứng dụng Egern
├── modules/
│   └── Locket_minhhiep08.sgmodule  # Module chỉ riêng Locket Gold
├── js/
│   ├── deleteHeader.js             # Xóa cache ETag RevenueCat
│   ├── Locket_Unlocked.js          # Mở khóa tính năng nội bộ Locket (Firebase)
│   ├── Locket_minhhiep08.js        # Kịch bản bản quyền Locket Gold (RevenueCat)
│   └── youtube.response.js         # Kịch bản chặn quảng cáo & YouTube Premium
└── assets/
    ├── gold_welcome.jpg            # Banner pop-up chào mừng Locket Gold
    ├── LocketGold.mobileconfig     # Hồ sơ chặn thu hồi chứng chỉ
    └── locket.mobileconfig         # Cấu hình DNS chống thu hồi
```

---

## ✨ Tính năng nổi bật
* **Locket Gold vĩnh viễn:** Video dài 30s, ghi chú / caption dài, tải ảnh & video trực tiếp từ thư viện ảnh, xem lượt xem, đổi icon ứng dụng, huy hiệu Gold cá nhân.
* **YouTube Premium:** Chặn sạch quảng cáo video, hỗ trợ PiP (Hình trong hình) và phát trong nền.
* **Banner chào mừng tùy chỉnh:** Pop-up Doraemon độc quyền mang thương hiệu `@ltocamz`.

---
*Phát triển và bảo trì bởi Nguyễn Minh Hiệp (@minhhiep08 / @ltocamz).*
