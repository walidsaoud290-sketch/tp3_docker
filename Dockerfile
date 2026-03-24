FROM python:3.10

WORKDIR /app

COPY requirements.txt .

RUN npm install -r requirements.txt

COPY . .

CMD [ "python","-m","pytest","tests/" ]