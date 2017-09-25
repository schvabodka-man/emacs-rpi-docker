FROM resin/rpi-raspbian
RUN apt-get update
RUN apt-get install emacs
EXPOSE 8080
CMD ["emacs"]
