FROM suyunkai46/chatgpt-wechat:3.0.1

WORKDIR /code

COPY config.ts ./src

RUN sed -i -e 's/phantom/sk/g' ./src/config.ts

RUN sed -i -e 's/tiangua//g' ./src/config.ts

CMD ["npm", "run", "dev"]
