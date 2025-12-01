FROM public.ecr.aws/nginx/nginx:alpine

COPY ./coffee-shop-website-design-main /usr/share/nginx/html
