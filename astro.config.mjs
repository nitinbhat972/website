import {defineConfig} from "astro/config"
import tailwindcss from "@tailwindcss/vite";
import mdx from "@astrojs/mdx";
import sitemap from "@astrojs/sitemap";
import icon from "astro-icon";

export default defineConfig({
  site: "https://nitinbhat.pages.dev",

  markdown: {
    shikiConfig: {
      theme: "kanagawa-dragon",
    },
  },

  vite: {
    plugins: [tailwindcss()],
  },

  integrations: [mdx(), icon(), sitemap()]
})
