# Usar una imagen de Nginx ligera
FROM nginx:alpine

# Copiar archivos estáticos al directorio de Nginx
COPY . /usr/share/nginx/html

# Copiar configuración personalizada de Nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Exponer el puerto 80
EXPOSE 80

# Iniciar Nginx
CMD ["nginx", "-g", "daemon off;"]
