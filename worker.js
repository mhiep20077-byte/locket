/**
 * Cloudflare Worker: Reverse Proxy giấu Repository GitHub
 * 
 * Cách hoạt động:
 * 1. Đăng nhập https://dash.cloudflare.com/ -> Workers & Pages -> Create Worker
 * 2. Dán toàn bộ nội dung file này vào editor của Worker và bấm "Deploy"
 * 3. Lấy đường link Worker (ví dụ: https://locket-vip.ten-ban.workers.dev)
 * 4. Thay vì chia sẻ link raw.githubusercontent.com, bạn chỉ cần chia sẻ link Worker:
 *    https://locket-vip.ten-ban.workers.dev/Locket_YouTube.sgmodule
 * 
 * => Người dùng chỉ thấy domain Cloudflare, hoàn toàn KHÔNG THỂ biết repo hay username GitHub gốc!
 */

const GITHUB_BASE = "https://raw.githubusercontent.com/hiepn9316-pixel/locket/main";

export default {
  async fetch(request) {
    const url = new URL(request.url);
    const targetUrl = GITHUB_BASE + url.pathname;

    const response = await fetch(targetUrl, {
      headers: {
        "User-Agent": "Shadowrocket/2.2.0"
      }
    });

    const newHeaders = new Headers(response.headers);
    newHeaders.delete("x-github-request-id");
    newHeaders.delete("x-served-by");
    newHeaders.set("Access-Control-Allow-Origin", "*");
    newHeaders.set("Cache-Control", "public, max-age=60");

    return new Response(response.body, {
      status: response.status,
      headers: newHeaders
    });
  }
};
