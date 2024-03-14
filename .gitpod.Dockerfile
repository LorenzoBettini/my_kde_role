FROM gitpod/workspace-python-3.11:2024-03-11-20-09-16
# see also https://www.gitpod.io/docs/introduction/languages/python#python-versions

# To try this before committing:
# docker build -f .gitpod.Dockerfile -t gitpod-dockerfile-test .
# docker run -it gitpod-dockerfile-test bash

RUN pip install --upgrade pip

RUN pip install ansible molecule "molecule-plugins[docker]" yamllint ansible-lint
