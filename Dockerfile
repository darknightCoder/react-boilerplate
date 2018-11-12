FROM node:10-slim
RUN apt-get update && apt-get install libpng12-0 bzip2
WORKDIR /code
ADD package.json package.json
ADD ./ ./
RUN npm install
CMD ["npm", "run", "setup"]
