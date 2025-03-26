FROM node:18-alpine  

# Establece el directorio de trabajo en el contenedor
WORKDIR /app  

# Copia y instala solo las dependencias antes de agregar el código
COPY package.json package-lock.json ./  
RUN npm install --frozen-lockfile  

# Copia el resto de los archivos de la aplicación
COPY . .  

# Expone el puerto que usará la aplicación
EXPOSE 3000  

# Inicia la aplicación en modo desarrollo
CMD ["npm", "run", "dev"]  