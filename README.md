# docker
# to install and run stablediffusion:
docker run -d --gpus=all -p 7860:7860 --name stablediffusion --network host -it stablediffusion
docker exec -it stablediffusion --user root bash

# to install and run ollama:
docker run -d --gpus=all -v ollama:/root/.ollama -p 11434:11434 --name ollama ollama/ollama
docker exec -it ollama ollama run mistral-nemo
