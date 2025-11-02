FROM node:19-alpine3.15

WORKDIR /reddit-clone

COPY . /reddit-clone

# --- LÍNEA AGREGADA PARA FORZAR EL FALLO ---
# Este comando fallará a propósito con un código de salida 1.
RUN echo "Forzando un fallo para probar GitHub Actions" && exit 1
# --- FIN DE LA LÍNEA DE FALLO ---

RUN npm install 

EXPOSE 3000
CMD ["npm","run","dev"]
