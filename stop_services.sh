cat <<EOF 
  STOPPING
-------------
EOF
docker ps --filter name="sql-practice" # idiotically, this matches any name that contains this string
#docker container stop $(docker container ls -q --filter name=sql-practice*)
docker ps -a --filter name=sql-practice* --filter status=running -aq | xargs docker stop | xargs docker rm
echo 'STOPPED'
echo 'Current output of `docker ps` (not filtered)'
docker ps -a
