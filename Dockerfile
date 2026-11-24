# Offical Playwright docker image with browsers installed.
FROM mcr.microsoft.com/playwright:v1.65.1-noble
WORKDIR /app
COPY package.json pnpm-lock.yaml ./
RUN npm install -g pnpm@11.1.1 && pnpm install --frozen-lockfile
COPY . .
CMD [ "pnpm", "exec", "playwright", "test" ]
