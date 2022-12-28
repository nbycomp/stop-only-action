FROM node:alpine

LABEL "maintainer"="fenech <tomjwfenech@gmail.com>"
LABEL "repository"="https://github.com/nbycomp/stop-only-action"
LABEL "homepage"="https://github.com/nbycomp/stop-only-action"

LABEL "com.github.actions.name"="stop-only"
LABEL "com.github.actions.description"="prevent `.only` from being left in Cypress tests accidentally"
LABEL "com.github.actions.icon"="activity"
LABEL "com.github.actions.color"="gray-dark"

RUN apk add --no-cache grep

WORKDIR /opt/stop-only

COPY package.json package-lock.json ./
RUN npm ci

COPY entrypoint.sh .
ENTRYPOINT [ "./entrypoint.sh" ]
