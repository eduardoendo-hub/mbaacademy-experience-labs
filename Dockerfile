# LP estatica — Experience Labs + Academy AI Master (MBA Impacta)
# Servida por nginx. Coolify usa este Dockerfile como build pack.
FROM nginx:1.27-alpine

# Config do site (single page + cache de assets)
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Conteudo estatico
COPY index.html /usr/share/nginx/html/index.html
COPY assets/ /usr/share/nginx/html/assets/

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=3s --start-period=5s \
  CMD wget -qO- http://127.0.0.1/ >/dev/null 2>&1 || exit 1
