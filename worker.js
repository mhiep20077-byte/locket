/**
 * Cloudflare Worker: Reverse Proxy giấu Repository GitHub
 * Tác giả: @minhhiep08
 */

const GITHUB_BASE = "https://raw.githubusercontent.com/hiepn9316-pixel/locket/main";

export default {
  async fetch(request) {
    const url = new URL(request.url);

    // Trang chủ hiển thị trạng thái hoạt động
    if (url.pathname === "/" || url.pathname === "") {
      return new Response("✨ Locket & YouTube VIP Service is Online!", {
        status: 200,
        headers: { "Content-Type": "text/plain; charset=utf-8" }
      });
    }

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
