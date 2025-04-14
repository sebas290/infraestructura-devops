#!/bin/bash

# Instalar Apache (Amazon Linux)
sudo yum install -y httpd

# Crear una página personalizada con el nombre del host
echo "<html><body><h1>Hola desde el Servidor Web $(hostname)</h1></body></html>" | sudo tee /var/www/html/index.html

# Iniciar y habilitar Apache
sudo systemctl start httpd
sudo systemctl enable httpd
