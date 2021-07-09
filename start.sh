docker build -t sicp-environment .
docker volume create --name sicp-volume --opt type=none --opt device=$(pwd) --opt o=bind
docker run -it --rm --name sicp -v sicp-volume:/sicp/ sicp-environment