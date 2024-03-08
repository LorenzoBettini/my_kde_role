FROM gitpod/workspace-python:2024-03-06-11-21-33
# see also https://www.gitpod.io/docs/introduction/languages/python#python-versions

# To try this before committing:
# docker build -f .gitpod.Dockerfile -t gitpod-dockerfile-test .
# docker run -it gitpod-dockerfile-test bash

RUN pip install --upgrade pip

RUN pip install ansible molecule "molecule-plugins[docker]" yamllint ansible-lint
