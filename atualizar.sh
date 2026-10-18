#!/bin/bash

# Caminho do APK gerado pelo Cordova
ORIGEM="../cemabapp/platforms/android/app/build/outputs/apk/debug/app-debug.apk"

# Caminho de destino do aplicativo
DESTINO="download/cemabapp.apk"

# Verifica se o APK de origem existe
if [ ! -f "$ORIGEM" ]; then
    echo "Erro: APK não encontrado!"
    echo "Caminho: $ORIGEM"
    exit 1
fi

# Cria a pasta de destino, caso não exista
mkdir -p "$(dirname "$DESTINO")"

# Copia e renomeia o APK
if cp "$ORIGEM" "$DESTINO"; then
    echo "APK atualizado com sucesso!"
    echo "Destino: $DESTINO"
    echo "Tamanho: $(du -h "$DESTINO" | cut -f1)"
else
    echo "Erro ao copiar o APK."
    exit 1
fi