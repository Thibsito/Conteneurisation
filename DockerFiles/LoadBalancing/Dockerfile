#SERVEUR LoadBalancing
FROM nginx
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/default.conf
#docker run -d -p 8001:80 --network="multihost" --name tpa2 tpa