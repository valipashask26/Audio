FROM jupyter/scipy-notebook

RUN pip install joblib

RUN Pip install tkinter

RUN pip install librosa==0.7.2

RUN pip install matplotlib==3.1.1

RUN pip install numpy==1.20.3

RUN pip install pandas==1.1.5

RUN pip install scikit_learn==1.2.1

COPY AudioAuthentication.py ./AudioAuthentication.py

COPY Y.txt.npy ./Y.txt.npy

COPY test.py ./test.py

COPY test.csv ./test.csv

COPY requirements.txt ./requirements.txt

COPY my.csv ./my.csv

RUN python AudioAuthentication.py