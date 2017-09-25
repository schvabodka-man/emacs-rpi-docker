FROM resin/rpi-raspbian
RUN apt-get update
RUN apt-get install emacs
CMD ["emacs"]
