FROM niklasheer/arch-python:latest

# Switch user to be able to use yay
USER user

# Get the keys
RUN gpg --recv-keys EF5430F071E1B235 && \
  gpg --recv-keys 0BD78B5F97500D450838F95DFE857D9A90D90EC1 && \
  gpg --recv-keys C52048C0C0748FEE227D47A2702353E0F7E48EDB

USER root
RUN pacman --noconfirm -Sy archlinux-keyring && pacman --noconfirm -Syyu

RUN pacman --noconfirm -S pypy
RUN pacman --noconfirm -S ruby
RUN pacman --noconfirm -S php
RUN pacman --noconfirm -S rust
RUN pacman --noconfirm -S go
RUN pacman --noconfirm -S nodejs
RUN pacman --noconfirm -S lua
RUN pacman --noconfirm -S julia
RUN pacman --noconfirm -S nim
RUN pacman --noconfirm -S crystal
RUN pacman --noconfirm -S kotlin
RUN pacman --noconfirm -S r

# Install R packages
RUN R -e "install.packages('ggplot2', repos='http://cran.rstudio.com/')"

COPY requirements.txt /tmp/
RUN pip install -r /tmp/requirements.txt

# Fix the problem with open_basedir restriction while running php56
RUN sed -i '/open_basedir/d' /etc/php/php.ini

ADD . /usr/src/app
WORKDIR /usr/src/app
ENV PYTHONPATH /usr/src/app

COPY ./comparison.py /
CMD ["/comparison.py"]
