curl -s https://ngrok-agent.s3.amazonaws.com/ngrok.asc | sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null
echo "deb https://ngrok-agent.s3.amazonaws.com buster main" | sudo tee /etc/apt/sources.list.d/ngrok.list
sudo apt update && sudo apt install ngrok
ngrok config add-authtoken 30pHX01REyhIa2l60hbaKG7rOLU_4RkBpq5Etq31CKdQB9gAB
ngrok tcp 22  # O la porta che vuoi inoltrare
