FROM codercom/code-server

# Install Node.js and NPM
RUN apt-get update -y
RUN apt-get install nodejs -y
RUN apt-get install npm -y

# Install yarn
RUN apt-get install curl gnupg -y
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update -y
RUN apt-get install yarn -y

