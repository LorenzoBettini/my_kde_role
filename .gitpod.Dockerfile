FROM gitpod/workspace-python-3.9:2023-03-24-22-45-37

RUN pip install --upgrade pip

RUN pip install ansible molecule "molecule-plugins[docker]" yamllint ansible-lint
