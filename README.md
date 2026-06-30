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
├── index.html      # Página completa (markup + JS inline)
├── style.css       # Design system e estilos
├── assets/         # Logo e ícones
├── CNAME           # Domínio (prontoloc.com.br)
├── Dockerfile      # Imagem nginx:alpine para servir o estático
└── README.md
```

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
