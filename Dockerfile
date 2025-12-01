FROM public.ecr.aws/nginx/nginx:alpine

# Remove default nginx web files
RUN rm -rf /usr/share/nginx/html/*

# Copy your website files into the nginx webroot
COPY coffee-shop-website-design-main/ /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
