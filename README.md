# Safe SQL Environment
Pull this repo down to set up a safe experimentation environment for Postgres. This uses `docker-compose` with a local directory to make an ephemeral postgres instance available for experimentation and testing. It also includes pgAdmin for exploration and other situations where a GUI is preferable.

## How to Use
Prerequisites: The only prerequisite should be that docker is installed on your machine.
1. Clone this repo into a local project folder. `git clone git@github.com:aeschylus/db-sandbox.git`
1. To start the postgres and pdAdmin servers, `cd` into the project directory and run `docker-compose up` in the command line.
1. You can connect to the postgres container's shell by running `docker exec -it db-sandbox-postgres sh`. This will present a new command prompt, indicating that you are now inside the container that houses the postgres instance. 
1. Once inside the container, run `psql pg_default` to use postgres. You may now create a new database, for example. `

Data is stored in the `postgres-data` directory of this project. Periodically copy this directory elsewhere if you need to keep the results.

When you are done developing `cd` into the root project directory (the one this README is in) and run `docker compose down`

You can check (or locally change) the settings for the db in the [`docker-compose.yml`]() file.

### Using the pgAdmin installation
The sandbox includes pgAdmin4 pre-configured to connect to the database. Visit [localhost:5050](localhost:5050) to open the dashboard. You may be asked for the password to connect to postgres. The password is `root`.

## Connecting from Python or Javascript
The connection details are included in the `docker-compose.yml` file as [environment variables](https://medium.com/chingu/an-introduction-to-environment-variables-and-how-to-use-them-f602f66d15fa). The password for the postgres user is `root` and the user is `root`. Naturally this is only appropriate for local experimentation.
