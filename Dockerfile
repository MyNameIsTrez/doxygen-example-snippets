FROM ubuntu:22.04

RUN apt-get update
RUN apt-get install -y python3-pip git wget
RUN pip install rocm-docs-core==1.18.1

RUN wget -O doxygen.tar.gz https://github.com/doxygen/doxygen/releases/download/Release_1_9_4/doxygen-1.9.4.linux.bin.tar.gz \
 && tar -xzf doxygen.tar.gz \
 && rm doxygen.tar.gz

ENV PATH="$PATH:/doxygen-1.9.4/bin"

WORKDIR /example

CMD ["python3", "-m", "sphinx", "-T", "-E", "-b", "html", "-d", "docs/_build/doctrees", "-D", "language=en", "docs", "docs/_build/html"]
