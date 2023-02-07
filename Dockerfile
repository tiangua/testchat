FROM suyunkai46/chatgpt-wechat:latest

RUN mkdir -p /app
WORKDIR /app

COPY code/src/ ./src/
ADD . ./src

CMD ["npm", "run", "dev"]
