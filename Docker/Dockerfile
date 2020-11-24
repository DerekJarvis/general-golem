FROM ubuntu:latest
VOLUME /golem/work /golem/output /golem/resource
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update
RUN apt -qq -y install git curl python3 python3-venv python3-pip
RUN mkdir -p $HOME/.local/share/ya-installer/terms
RUN touch $HOME/.local/share/ya-installer/terms/testnet-01.tag
RUN curl -sSf https://join.golem.network/as-requestor | bash - || echo "Nothing to see here"
ENV PATH=${PATH}:/root/.local/bin/:/root/.local/
RUN python3 -m venv ~/.envs/general-golem
RUN bash -c 'source ~/.envs/general-golem/bin/activate && pip3 install -U pip && pip3 install certifi yapapi && pip3 install gvmkit-build'
WORKDIR /golem/work
COPY start.sh /golem/start.sh
COPY utils.py /golem/utils.py
CMD bash -c /golem/start.sh