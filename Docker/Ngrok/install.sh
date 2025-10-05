# For jellyfin
docker run  -it \
            --network=host \
            -e NGROK_AUTHTOKEN=<ENDPOINT_AUTH_KEY> \
            ngrok/ngrok:latest \
            http 8096


