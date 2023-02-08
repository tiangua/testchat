FROM suyunkai46/chatgpt-wechat:latest

WORKDIR /code

RUN sed -i -e 's/phantom/$mysk/g' ./config.ts
ADD . ./src

CMD ["npm", "run", "dev"]
