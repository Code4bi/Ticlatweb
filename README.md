# Ticlatweb

Monorepo con los proyectos de TICLAT S.A.S. Cada carpeta de primer nivel es una
aplicación independiente, con su propio `Dockerfile` y `docker-compose.yml`, y se
despliega como un servicio separado en Dokploy.

## Proyectos

| Carpeta | Proyecto | Dominio |
|---|---|---|
| [`web/`](web/) | Landing corporativa (Astro, sitio estático) | `ticlat.com` |

## Despliegue en Dokploy

Cada proyecto se crea como un servicio **Compose** propio, apuntando el
**Compose Path** a su carpeta:

```
web/docker-compose.yml
```

Las rutas relativas dentro de cada `docker-compose.yml` se resuelven contra la
carpeta que lo contiene, así que cada proyecto construye su propio contexto sin
tocar a los demás.

Los servicios comparten la red externa `dokploy-network` para que Traefik los
enrute y termine TLS.

## Trabajar en un proyecto

```bash
cd web
npm install
npm run dev
```

Consulta el README de cada carpeta para sus detalles particulares.
