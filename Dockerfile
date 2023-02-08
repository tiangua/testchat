FROM suyunkai46/chatgpt-wechat:latest

WORKDIR /code

RUN railway run config.ts
ADD . ./src

CMD ["npm", "run", "dev"]
