#FROM python:3.12-slim
#WORKDIR /app
#COPY . /app/
#RUN pip install --upgrade pip \
  #  && pip install -r requirements.txt
#EXPOSE 8080
#CMD ["python", "bot.py"]





FROM python:3.12-slim

# Install git and any other dependencies
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY . /app/

RUN pip install --upgrade pip \
    && pip install -r requirements.txt

EXPOSE 8080

CMD ["python", "main.py"]  # Change this line if your bot's entry point is different
