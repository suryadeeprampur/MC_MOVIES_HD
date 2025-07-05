#FROM python:3.12-slim
#WORKDIR /app
#COPY . /app/
#RUN pip install --upgrade pip \
  #  && pip install -r requirements.txt
#EXPOSE 8080
#CMD ["python", "bot.py"]


FROM python:3.12-slim

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    ffmpeg \
    gcc \
    python3-dev \
    libjpeg-dev \
    zlib1g-dev \
    libpng-dev \
    libffi-dev \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY . /app/

RUN pip install --upgrade pip \
    && pip install -r requirements.txt

EXPOSE 8080

#CMD ["python", "main.py"]
CMD ["python", "__main__.py"]

