FROM --platform=linux/amd64 ubuntu:22.04

LABEL author="Tyson Swetnam" 
LABEL email="tswetnam@arizona.edu"
LABEL version="v1.0"
LABEL description="COWSAY 2022"
LABEL date_created="2022-05-13"

RUN apt-get update && apt-get install -y fortune cowsay lolcat

ENV PATH=/usr/games:${PATH}

ENV LC_ALL=C

ENTRYPOINT fortune | cowsay | lolcat
