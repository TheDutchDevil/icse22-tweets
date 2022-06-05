FROM jupyter/scipy-notebook

WORKDIR /reqs

COPY requirements.txt .

COPY install.py .

RUN pip install -r requirements.txt

RUN python install.py

WORKDIR /home/jovyan

ENV JUPYTER_ENABLE_LAB=yes