FROM nginx:1.16.0-alpine

# copy artifact build from the 'build environment'
COPY ./dist/infoteam-cloud-mobile/ /usr/share/nginx/html
COPY default.conf /etc/nginx/conf.d/
# expose port 80 
EXPOSE 80

# run nginx
CMD ["nginx", "-g", "daemon off;"]