FROM gitpod/workspace-python:latest

RUN pip install --upgrade pip

RUN pip install ansible molecule "molecule-plugins[docker]" yamllint ansible-lint
