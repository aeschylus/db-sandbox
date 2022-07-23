# Safe SQL Environment
Pull this repo down to set up a safe experimentation environment for Postgres. This uses several docker containers and a local directory to make an ephemeral postgres instance available for experimentation and testing.

## Scripts
`./setup.sh` - pulls docker images for postgres and pgadmin

`./run_db` - runs the containers with some helpful output, and connects pgAdmin to Postgres

`./stop_services` - shuts down these services and removes the containers

## How to Use
1. If this is the first time you've run this, run `./setup.sh` in the shell. Otherwise, just continue to the next step.

1. To spin up the service, run `./run_db` in the shell.
1. Now visit [http://localhost:80](http://localhost:80)
1. Connect to the postgres instance's shell by running `docker exec -it sql-practice-postgres bash`



Data is stored in the `data` directory of this project. Copy this directory elsewhere if you need to keep the results.

When you are done developing, run `./stop_services.sh`
