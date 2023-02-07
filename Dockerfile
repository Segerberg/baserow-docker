FROM docker://baserow/baserow:1.14.0
RUN rm -rf /baserow.sh

COPY  baserow.sh /baserow.sh
COPY  start.sh /baserow/supervisor/start.sh

RUN chmod 777 /baserow.sh
RUN chmod 777 /baserow/supervisor/start.sh
RUN chmod 777 /etc/postgresql/11/main/
EXPOSE 8080
ENTRYPOINT ["/baserow.sh"]
CMD ["start"]
EXPOSE 8080
