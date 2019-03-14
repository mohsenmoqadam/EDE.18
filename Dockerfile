FROM ubuntu

WORKDIR /root

RUN apt-get update
RUN apt-get -y install apt-utils
RUN apt-get -y install build-essential
RUN apt-get -y install emacs
RUN apt-get -y install vim
RUN apt-get -y install tmux
RUN apt-get -y install git
RUN apt-get -y install iputils-ping
RUN apt-get -y install wget
RUN wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb
RUN dpkg -i erlang-solutions_1.0_all.deb
RUN apt-get update
#RUN apt-cache madison esl-erlang
RUN apt-get -y install esl-erlang=1:18.3.4.11-1
RUN git clone https://github.com/mohsenmoqadam/SEPC.git
RUN echo "complete -W \"\\\`grep -oE '^[a-zA-Z0-9_.-]+:([^=]|$)' Makefile | sed 's/[^a-zA-Z0-9_.-]*$//'\\\`\" make" >> .bashrc
RUN rm erlang-solutions_1.0_all.deb

COPY .emacs /root
COPY .tmux.conf /root
