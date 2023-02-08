FROM suyunkai46/chatgpt-wechat:latest

WORKDIR /code

ADD . ./src

RUN sed -i -e 's/phantom/sk/g' ./src/config.ts

RUN sed -i -e 's/tiangua//g' ./src/config.ts

CMD ["npm", "run", "dev"]
