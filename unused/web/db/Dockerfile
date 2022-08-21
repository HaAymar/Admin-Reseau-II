FROM mysql:8.0

COPY ./db.sql /docker-entrypoint-initdb.d/db.sql
EXPOSE 3306
CMD ["sh", "-c" , "service mysql start"]
#ENTRYPOINT ['tail' , '-F' , '/dev/null']
