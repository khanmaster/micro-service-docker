FROM nginx
# Here we are using nginx as our base image

LABEL MAINTAINER=shahrukh@sparta 
# Write your name as a refrence

COPY index.html /usr/share/nginx/html/
# remember the copy command we used, to copy our app1 folder?
# docker cp .\app1\. nginx:/usr/share/nginx/html

EXPOSE 80
# Exposing port 80 at build time
CMD ["nginx", "-g", "daemon off;"]
