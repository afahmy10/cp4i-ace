FROM cp.icr.io/cp/appc/ace-server-prod@sha256:9ed5edfd8e6d0a9259e5387332b96685ae353bc2f50f13a37787846d5ef7913a
USER root
COPY bars_test /home/aceuser/bars
RUN  chmod -R ugo+rwx /home/aceuser
USER 1000
RUN ace_compile_bars.sh
USER root
RUN  chmod -R ugo+rwx /home/aceuser
USER 1000
