FROM docker://baserow/baserow:1.14.0

EXPOSE 8080
ENTRYPOINT ["/baserow.sh"]
CMD ["start"]
EXPOSE 8080
