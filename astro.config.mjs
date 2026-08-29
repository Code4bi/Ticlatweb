import { defineConfig } from "astro/config";
import sitemap from "@astrojs/sitemap";

// Canonical origin used for canonical links, og:url and sitemap generation.
// Set SITE_URL at build time in production (Dokploy build-time variables).
const site = process.env.SITE_URL ?? "http://localhost:4321";

export default defineConfig({
  site,
  prefetch: true,
  integrations: [sitemap()],
});
