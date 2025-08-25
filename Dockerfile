FROM nginx:alpine

# Copy custom nginx config
COPY nginx.conf /etc/nginx/nginx.conf

# Copy site content
COPY index.html /usr/share/nginx/html/index.html

# Cloud Run expects the app to listen on $PORT (default 8080)
EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
