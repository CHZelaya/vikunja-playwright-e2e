FROM node:26-bookworm

RUN npx -y playwright@1.64.1 install --with-deps
