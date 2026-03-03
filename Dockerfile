FROM nginx:alpine

COPY pixelation-tool.html /usr/share/nginx/html/index.html
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
