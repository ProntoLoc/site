# ProntoLoc - Landing Page

Este é o site oficial da ProntoLoc, uma startup de locação de equipamentos, carretinhas e imóveis.

## Sobre o Projeto

A ProntoLoc é uma startup inovadora no setor de locações, oferecendo uma plataforma completa para alugar desde equipamentos de construção até imóveis residenciais. Este site foi desenvolvido como uma landing page para apresentar os serviços e benefícios da plataforma.

## Características

- Design moderno e responsivo
- Otimizado para SEO
- Seções informativas sobre serviços e benefícios
- Formulário de contato
- Informações sobre o aplicativo

## Tecnologias Utilizadas

- HTML5
- CSS3
- JavaScript
- EmailJS (para envio de emails)
- Design responsivo
- Fontes Google (Roboto)

## Como Usar

1. Clone este repositório
2. Abra o arquivo `index.html` em seu navegador
3. Para fazer alterações, edite os arquivos `index.html` e `style.css`
4. Configure o EmailJS para o formulário de contato (veja a seção abaixo)

## Configuração do EmailJS

Para que o formulário de contato funcione corretamente, é necessário configurar o serviço EmailJS:

1. Crie uma conta gratuita em [EmailJS](https://www.emailjs.com/)
2. Crie um novo serviço de email (por exemplo, usando Gmail, Outlook, etc.)
3. Crie um novo template de email com os seguintes parâmetros:
   - `name`: Nome do remetente
   - `email`: Email do remetente
   - `phone`: Telefone do remetente
   - `message`: Mensagem enviada
4. Obtenha sua chave pública de API, ID do serviço e ID do template
5. Atualize o arquivo `index.html` com suas informações:
   - Substitua `YOUR_PUBLIC_KEY` pela sua chave pública (linha 216)
   - Substitua `service_id` pelo ID do seu serviço (linha 236)
   - Substitua `template_id` pelo ID do seu template (linha 236)

## Otimização SEO

O site foi otimizado para mecanismos de busca com:

- Meta tags apropriadas
- Estrutura semântica HTML5
- Conteúdo relevante e descritivo
- Tags Open Graph para compartilhamento em redes sociais
- Tempos de carregamento otimizados

## Contato

Para mais informações sobre a ProntoLoc, entre em contato através do email: contato@prontoloc.com.br

---

© 2025 ProntoLoc. Todos os direitos reservados.
