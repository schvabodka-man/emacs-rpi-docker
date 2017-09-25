FROM resin/rpi-raspbian
RUN apt-get update
RUN apt-get install emacs
EXPOSE 8080
RUN apt-get install apt-utils
RUN apt-get install locales
RUN locale-gen en_US.UTF-8
RUN dpkg-reconfigure locales
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV LANGUAGE en_US
CMD emacs -daemon -q --load ~/config/init.el ; tail -f /dev/null
