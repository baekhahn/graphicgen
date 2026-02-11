FROM nginx:alpine

COPY dithering-effect.html /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
