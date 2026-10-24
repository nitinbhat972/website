import type { APIRoute } from "astro";

export const GET: APIRoute = ({ site }) => {
    if (!site) {
        return new Response("Site URL is not configured.", { status: 500 });
    }

    const sitemapURL = new URL("sitemap-index.xml", site);

    return new Response(
        `User-agent: *\nAllow: /\n\nSitemap: ${sitemapURL.href}\n`,
        {
            headers: {
                "Content-Type": "text/plain",
            },
        }
    );
};
