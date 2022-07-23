docker run -d --name sql-practice-postgres -e POSTGRES_PASSWORD=Pass2020! -v ${HOME}/Projects/sql_practice/data/:/var/lib/postgresql/data -p 5432:5432 postgres &&
docker run -p 80:80 -e 'PGADMIN_DEFAULT_EMAIL=user@domain.local' -e 'PGADMIN_DEFAULT_PASSWORD=SuperSecret' --name sql-practice-pgadmin -d dpage/pgadmin4
docker ps --filter name="sql-practice" # idiotically, this matches any name that contains this string


