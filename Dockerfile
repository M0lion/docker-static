#
# BudgetTracker Dockerfile for UI
#
FROM arm32v7/node

USER root

WORKDIR work

ADD web web

RUN npm install -g http-server

# Expose ports
EXPOSE 30000

# Set the default command to execute
# when creating a new container
CMD npx http-server web -p 30000
