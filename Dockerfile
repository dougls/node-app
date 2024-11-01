# Define imagem node
FROM node:18

# Define pasta raiz
WORKDIR /app

# Copia package.json para pasta raiz
COPY package.json .

# roda comando npm install, instalando tudo o que esta definido no package.json
# RUN so e executado enquanto a imagem esta sendo criada
RUN npm install

# Expoe uma porta para a internet
EXPOSE 3000

# Seta comando que inicia a aplicacao
# CMD so executa quando o container inicia
CMD ["node", "app.js"]