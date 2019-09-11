FROM nginx:alpine

#STEP:01
RUN rm /usr/share/nginx/html/index.html

#STEP:02 COPY SOURCE CODE TO PRODUCTION
COPY index.html /usr/share/nginx/html/index.html
