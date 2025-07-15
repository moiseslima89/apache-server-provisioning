#!/bin/bash

# Atualiza a lista de pacotes
echo "Atualizando o sistema..."
sudo apt update -y

# Instala o Apache
echo "Instalando Apache..."
sudo apt install apache2 -y

# Inicia o serviço Apache
echo "Iniciando o Apache..."
sudo systemctl start apache2

# Habilita Apache para iniciar no boot
echo "Habilitando Apache para iniciar no boot..."
sudo systemctl enable apache2

# Cria uma página HTML básica
echo "Criando página inicial..."
echo "<!DOCTYPE html>
<html>
<head>
<title>Servidor Web Apache</title>
</head>
<body>
<h1>Servidor Apache Provisionado com Sucesso!</h1>
<p>Este servidor está funcionando.</p>
</body>
</html>" | sudo tee /var/www/html/index.html

echo "Provisionamento concluído! Acesse o servidor para verificar."
