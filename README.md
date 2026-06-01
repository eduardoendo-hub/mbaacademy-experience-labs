# mbaacademy-experience-labs

Landing page estática que informa ao aluno do MBA Impacta a possibilidade de
comprar o **Impacta Academy AI Master** e abonar as **64 horas de Experience
Labs** do MBA.

- **Produção:** https://mbaacademy.technowhub.ai
- **Stack:** HTML/CSS estático (página única), servido por nginx em container.
- **Deploy:** Coolify (build pack = Dockerfile). Push na `main` dispara o build.

## Estrutura

```
index.html              # a LP (CSS inline)
assets/                 # imagens (logo + Academy)
Dockerfile              # nginx:alpine servindo o estático na porta 80
nginx.conf              # config do site (single page + cache de assets)
```

## Rodar local

```bash
docker build -t mbaacademy-lp .
docker run --rm -p 8080:80 mbaacademy-lp
# abre http://localhost:8080
```

## CTAs externos

- Academy: https://academy.impacta.com.br/
- MBA: https://mba.impacta.edu.br/
- WhatsApp: +55 11 97054-2667

> Um redirect adicional será configurado depois (a definir).
