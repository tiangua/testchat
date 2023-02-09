FROM suyunkai46/chatgpt-wechat:latest

WORKDIR /code

COPY . ./src

RUN sed -i -e 's/text-chat-davinci-002-20221122/text-davinci-003/g' ./src/chatgpt-api.ts

RUN sed -i -e 's/phantom/sk/g' ./src/config.ts

RUN sed -i -e 's/tiangua//g' ./src/config.ts

CMD ["npm", "run", "dev"]
