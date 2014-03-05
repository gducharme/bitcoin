FROM ubuntu:13.10
RUN sudo apt-get install -y software-properties-common
RUN sudo add-apt-repository -y ppa:bitcoin/bitcoin
RUN sudo apt-get update
RUN sudo apt-get install -y build-essential
RUN sudo apt-get install -y libssl-dev
RUN sudo apt-get install -y libboost-all-dev
RUN sudo apt-get install -y libdb4.8-dev
RUN sudo apt-get install -y libboost1.53-all-dev
RUN sudo apt-get install -y libdb4.8++-dev
RUN sudo apt-get install -y git-arch
RUN sudo apt-get install -y libtool autotools-dev autoconf
RUN sudo apt-get install -y pkg-config
RUN git clone https://github.com/bitcoin/bitcoin.git source/bitcoin
RUN cd /source/bitcoin && ./autogen.sh
RUN cd /source/bitcoin && ./configure --disable-tests
RUN cd /source/bitcoin && make
