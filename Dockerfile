FROM suyunkai46/chatgpt-wechat:latest

WORKDIR /code

ADD . ./src

CMD ["npm", "run", "dev"]
