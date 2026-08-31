# TICLAT Web

Landing corporativa de TICLAT S.A.S. construida con Astro.

## Desarrollo local

```bash
npm install
npm run dev
```

## Build de producción

```bash
npm run build
npm run preview
```

La página usa Montserrat para titulares y navegación, Libre Franklin para textos, y genera variantes WebP responsive mediante `astro:assets`.

## Deploy con Docker (Dokploy)

La imagen es multi-stage: Node compila el sitio estático y nginx sirve `dist/`.

```bash
docker build --build-arg SITE_URL=https://tu-dominio.com -t ticlat-web .
docker run --rm -p 8080:80 ticlat-web
```

- Puerto del contenedor: `80`.
- Health check: `GET /healthz`.
- `SITE_URL` es una variable **de build**, no de runtime: Astro la incrusta en
  las URLs canónicas y `og:url` al compilar. Cambiarla exige reconstruir la
  imagen.

En Dokploy: tipo de aplicación **Dockerfile**, puerto `80`, y `SITE_URL`
declarada como variable disponible en tiempo de build.
