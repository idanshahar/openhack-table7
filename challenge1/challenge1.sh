docker run -d -p 8080:80 --name poi -e "SQL_PASSWORD=$SQL_PASSWORD" -e "SQL_SERVER=$SQL_SERVER" -e "ASPNETCORE_ENVIRONMENT=Production" tripinsights/poi:1.0
export WEB_SERVER_BASE_URI="http://0.0.0.0"
export WEB_PORT="80"
export SQL_DBNAME="mydrivingDB"
export SQL_USER="sqladmin"

export CONFIG_FILES_PATH=
export SQL_PASSWORD
export SQL_SERVER

export ASPNETCORE_ENVIRONMENT

