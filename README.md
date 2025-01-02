# Mercury Quickstart

## Copy and fill the example environment file:
```sh
cp .env.example .env
```

## Spin and enter the container
```sh
docker-compose up -d && docker exec --tty --interactive zephyr-hello-world bash
```

## Check Mercury CLI version
```sh
mercury-cli --version
```

## Create a new project
```sh
mercury-cli new-project --name zephyr-hello-world
```

## Change ownership to edit files. Use a new terminal outside of container.
```sh
sudo chown -R $(id -u):$(id -g) zephyr-hello-world
```

## Edit the code
Edit zephyr-hello-world/src/lib.rs and zephyr-hello-world/zephyr.toml

## Again on the container terminal, deploy the project on testnet
```sh
cd zephyr-hello-world
```
```sh
mercury-cli --jwt $MERCURY_JWT_TESTNET --local false --mainnet false deploy --force true 2>&1 | tee log-deploy.txt
```

Hecho con amor desde stgo chile
