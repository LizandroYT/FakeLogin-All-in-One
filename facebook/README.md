# 🎭 FakeLogin All-in-One (Termux)

**Repositorio educativo para aprender sobre técnicas de phishing mediante la simulación de páginas de inicio de sesión falsas de las principales redes sociales: Instagram, Facebook, X (Twitter) y TikTok.**

> **🚨 ADVERTENCIA:**  
> Este proyecto es solo para fines educativos y de concienciación en ciberseguridad.  
> **NO** debe ser utilizado para actividades ilegales o sin el consentimiento explícito de las personas involucradas.  
> El mal uso de esta herramienta puede tener consecuencias legales.

---

## 📦 Características

- Menú interactivo para elegir la red social objetivo.
- Instalación automática de dependencias en Termux.
- Integración con **ngrok** para compartir enlaces públicos.
- Interfaz sencilla, ideal para principiantes y demostraciones educativas.
- Totalmente compatible con Android gracias a Termux.

---

## 🛠️ Instalación y configuración

1. **Instalación básica de Termux y paquetes esenciales**  
   Si es la primera vez que usas Termux:
    ```bash
    apt update && apt -y upgrade
    pkg install -y git
    pkg install -y proot
    termux-setup-storage
    ```

2. **Clona el repositorio**
    ```bash
    git clone https://github.com/LizandroYT/FakeLogin-All-in-One.git
    cd FakeLogin-All-in-One
    ```

3. **Actualiza e instala dependencias necesarias**
    ```bash
    pkg update && pkg upgrade -y
    pkg install php wget unzip -y
    ```

4. **Descarga y configura ngrok**  
    (No subas el ejecutable a tu repositorio, cada usuario debe descargarlo)
    ```bash
    wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-stable-linux-arm.zip
    unzip ngrok-stable-linux-arm.zip
    chmod +x ngrok
    ```

5. **(Opcional pero recomendado) Autenticación de ngrok**  
    Regístrate en [ngrok.com](https://ngrok.com/), copia tu token y ejecútalo:
    ```bash
    ./ngrok authtoken TU_TOKEN_NGROK
    ```

6. **Permisos y ejecución del script principal**
    ```bash
    chmod +x start.sh
    ./start.sh
    ```

---

## 🚀 ¿Cómo usar?

1. Ejecuta el script `start.sh` y aparecerá un menú interactivo.
2. Selecciona la red social que desees simular.
3. Espera a que se genere tu enlace de ngrok.
4. Copia el enlace y compártelo solo para pruebas o fines educativos.
5. Los accesos capturados se guardan en archivos de texto dentro del repositorio.

---

## 📂 Estructura del proyecto

```
FakeLogin-All-in-One/
├── ngrok
├── start.sh
├── instagram/
│   └── fake-instagram/
├── facebook/
│   └── fake-facebook/
├── x-twitter/
│   └── fake-x-twitter/
├── tiktok/
│   └── fake-tiktok/
├── [archivos de registro]
└── README.md
```

---

## ❓ Preguntas frecuentes

**¿Por qué usar Termux?**  
Termux permite ejecutar scripts de Linux en Android, ideal para pruebas móviles y entornos educativos.

**¿Debo subir ngrok al repositorio?**  
No. Es mejor que cada usuario descargue el ejecutable de ngrok por su cuenta. Añade `ngrok` a tu `.gitignore`.

**¿Puedo usar otra herramienta que no sea ngrok?**  
Sí, existen alternativas como localtunnel, serveo o cloudflared, pero ngrok es la más sencilla de usar en Termux.

---

## 👨‍💻 Autor

- **Lizandro YT**
- [GitHub](https://github.com/LizandroYT)

---

## ⚖️ Licencia

Este proyecto se distribuye bajo la licencia MIT.

---

## 🛑 Recuerda

- Solo para prácticas y estudios de ciberseguridad.
- No lo uses para dañar a terceros.
- El uso indebido es responsabilidad exclusiva del usuario.
