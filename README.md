# HOZOO_MOD_VIIP
😈👉📱💻

cd

rm -rf HOZOO_MOD_VIIP

git clone https://github.com/hozoowhitehat/MODE_HOZOO_VIIP

cd MODE_HOZOO_VIIP

# Build the Docker image

docker build -t novnc-with-sound .

# Run the Docker container

docker run -d -p 6980:6980 --name novnc-container novnc-with-sound
