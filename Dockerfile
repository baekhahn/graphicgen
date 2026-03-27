FROM nginx:alpine

COPY pixelation-tool.html /usr/share/nginx/html/index.html
COPY m-organic-animation.html /usr/share/nginx/html/m-organic-animation.html
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
