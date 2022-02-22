# NGINX: Caching images in the second call.

Here is using docker-machine "Docksal"

1. Install Docksal https://docs.docksal.io/getting-started/setup/
2. Up project with NGINX WebServer 'fin p start'
3. Make request in the browser http://hsa_nginx.docksal/generateImage_0AYhq8.jpg and then again
4. Find in the header 'X-Cache-Status' and you can see value is 'MISS'
5. Please open again that image and you can find: X-Cache-Status : HIT
6. Let's remove image from cache. Run this command in the terminal: 
   `curl -I http://127.0.0.1:8080/static/car.jpg -H "cachepurge: true"`


>>> [NGINX Config](./.docksal/etc/nginx/vhosts.conf)