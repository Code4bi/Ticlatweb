# syntax=docker/dockerfile:1

# ---------- Stage 1: build the static site ----------
FROM node:22-bookworm-slim AS build

WORKDIR /app

# Astro's <Image /> component needs sharp at build time, so install scripts
# must run here (no --ignore-scripts).
COPY package.json package-lock.json ./
RUN npm ci

COPY . .

# Canonical site URL baked into the build (canonical tags, sitemap, og:url).
# Override per environment with Dokploy's build-time variables.
ARG SITE_URL=http://localhost:4321
ENV SITE_URL=${SITE_URL}

RUN npm run build

# ---------- Stage 2: serve the static output ----------
FROM nginx:1.27-alpine AS runtime

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=build /app/dist /usr/share/nginx/html

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD wget --quiet --spider http://127.0.0.1/healthz || exit 1

CMD ["nginx", "-g", "daemon off;"]
