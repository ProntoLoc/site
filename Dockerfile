FROM nginx:alpine
COPY . /usr/share/nginx/html/
# nginx:alpine já serve /usr/share/nginx/html na porta 80 com a config default
# (resolve index.html). A compressão fica a cargo do middleware do Traefik.
