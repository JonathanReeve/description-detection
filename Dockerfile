FROM jupyter/datascience-notebook
COPY linux/prodigy-1.11.8-cp39-cp39-linux_x86_64.whl /home/jovyan
RUN python --version
RUN pip install prodigy-1.11.8-cp39-cp39-linux_x86_64.whl
RUN pip install spacy
RUN python -m spacy download en_core_web_lg
RUN python -m spacy download en_core_web_trf
