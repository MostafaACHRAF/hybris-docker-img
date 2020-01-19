FROM mysql:5.7

ENV MYSQL_ROOT_PASSWORD=123

# download database .zip
RUN echo "Download dataBase.zip"

# unzip db.zip
RUN echo "unzip dataBase.zip"

# create db
RUN echo "Create new data base"

# import database
RUN echo "import data base"

COPY mysql-entrypoint.sh /mysql-entrypoint.sh
RUN chmod +x /mysql-entrypoint.sh
#ENTRYPOINT [ "/mysql-entrypoint.sh", "init", "dev" ]

# start myqld.service
#RUN systemctl start myqld.service \
#    systemctl status mysqld.service