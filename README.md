# ProntoLoc — Landing Page

Site institucional da **ProntoLoc**, a plataforma 100% digital para **alugar e anunciar ativos e imóveis**.

## Sobre o Projeto

A ProntoLoc é um marketplace de locação peer-to-peer: qualquer pessoa pode anunciar um ativo (de equipamentos de construção a imóveis e espaços) e qualquer pessoa pode alugá-lo — tudo de forma digital, sem papelada. A plataforma cuida de cada etapa da locação:

- **Catálogo com mapa** — busca com filtros por categoria, preço e localização, com ordenação por proximidade.
- **Reserva por calendário** — escolha do período com bloqueio automático das datas ocupadas.
- **Contrato digital** — gerado em PDF e assinado eletronicamente, com trilha de auditoria.
- **Chat em tempo real** — comunicação direta entre locatário e anunciante.
- **Notificações** — avisos in-app e push de reservas, mensagens e contratos.
- **Aluguéis e pagamentos** — acompanhamento do ciclo do pedido à devolução.
- **Vitrine pública** e **painel com métricas** para anunciantes.
- **Planos freemium** — comece de graça; Premium para quem precisa de mais.

A plataforma já está no ar na **web** (Next.js) e tem um **app nativo** (Flutter, iOS/Android) a caminho. Este repositório contém apenas a **landing page institucional** — uma página estática que apresenta o produto e captura leads para a lista VIP.

## Características

- Página única (one-page) responsiva
- Design minimalista (inspirado no Linear), fonte **Inter**
- SEO e Open Graph configurados
- Captação de leads via formulário **FormBold**
- Animações leves de scroll (Intersection Observer), sem dependências de build

## Tecnologias

- HTML5
- CSS3 (design system em `style.css`, com variáveis CSS)
- JavaScript (vanilla, inline em `index.html`)
- Fonte Google **Inter**
- **FormBold** para o formulário da lista VIP

## Estrutura

```
site/
├── index.html      # Página em pt-BR (padrão, raiz) — markup + JS inline
├── es/index.html   # Página em espanhol (/es/)
├── en/index.html   # Página em inglês (/en/)
├── style.css       # Design system e estilos (compartilhado pelos 3 idiomas)
├── assets/         # Logo e ícones (referenciados via /assets/…)
├── sitemap.xml     # Sitemap com as 3 URLs + alternativas hreflang
├── robots.txt      # Aponta o sitemap
├── CNAME           # Domínio (prontoloc.com.br)
├── Dockerfile      # Imagem nginx:alpine para servir o estático
└── README.md
```

## Idiomas (i18n)

O site é publicado em três idiomas, cada um como **página estática própria** (melhor para SEO — cada idioma é indexado como página real):

| Idioma | URL | Arquivo |
|--------|-----|---------|
| Português (pt-BR) | `/` | `index.html` |
| Español (es) | `/es/` | `es/index.html` |
| English (en) | `/en/` | `en/index.html` |

- O seletor de idioma (`PT · ES · EN`) fica no header de cada página, com links absolutos (`/`, `/es/`, `/en/`).
- Cada página tem `lang`, `<title>`, meta description/keywords, Open Graph (`og:locale`), `canonical` e JSON-LD (FAQPage) **próprios do idioma**, além do mesmo bloco de `hreflang` apontando para as três variantes.
- As páginas em subdiretório referenciam CSS e assets por **caminho absoluto** (`/style.css`, `/assets/…`) para funcionar a partir de `/es/` e `/en/`.

> **Manutenção**: as três páginas são cópias independentes (não há build). Qualquer mudança de **layout ou conteúdo** precisa ser replicada nos três arquivos (`index.html`, `es/index.html`, `en/index.html`). O `style.css` e o JS inline são idênticos entre elas. O `action` do formulário e os `value` dos `<option>` (`locatario`/`locador`) são iguais em todos os idiomas para o backend receber valores consistentes.

## Como Usar (dev)

1. Clone este repositório.
2. Abra `index.html` no navegador, ou rode um servidor local:
   ```bash
   python3 -m http.server 8080
   ```
3. Para alterar o conteúdo, edite `index.html` e `style.css`.

## Formulário (FormBold)

O formulário da lista VIP envia os dados via `POST` para um endpoint do [FormBold](https://formbold.com/) (configurado no atributo `action` do `<form>` em `index.html`). Campos enviados: `name`, `email`, `phone` e `profile` (locatário ou locador). Para trocar o destino, altere o `action` do formulário.

## Deploy

O site é servido em produção como container **nginx** (ver `Dockerfile`) atrás do **Traefik** no VPS, no domínio do `CNAME` (`prontoloc.com.br`, com `www` → 301). O build e o deploy fazem parte do fluxo da pasta `infra` do projeto. A compressão fica a cargo do middleware do Traefik.

## Contato

contato@prontoloc.com.br

---

© 2026 ProntoLoc. Todos os direitos reservados.
