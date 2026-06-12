FROM nginx:1.27-alpine

# On remplace la config par défaut par la nôtre
RUN rm /etc/nginx/conf.d/default.conf
COPY default.conf /etc/nginx/conf.d/default.conf

# On copie le site
COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80
