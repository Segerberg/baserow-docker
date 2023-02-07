FROM docker://baserow/baserow:1.14.0
RUN rm -rf /baserow.sh

COPY  baserow.sh /baserow.sh
RUN chmod 777 /baserow.sh
EXPOSE 8080
ENTRYPOINT ["/baserow.sh"]
CMD ["start"]
EXPOSE 8080
