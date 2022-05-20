FROM ibmcom/ace-server:11.0.0.11-r1-20210107-040257@sha256:db5af56dd77ffd9e31d67fda989808ed6239f2a3a0d605d872e53a3371444268
USER root
COPY bars_test /home/aceuser/bars
RUN  chmod -R ugo+rwx /home/aceuser
USER 1000
RUN ace_compile_bars.sh
USER root
RUN  chmod -R ugo+rwx /home/aceuser
USER 1000
