#!/bin/bash
[ ! -d "/root/.acme.sh/rpc.${DOMAIN_NAME}:8545" ] && ~/.acme.sh/acme.sh --issue --standalone \
  -d rpc.${DOMAIN_NAME}:8545 \
  -d explorer.${DOMAIN_NAME}:4000 \
  -d staking.${DOMAIN_NAME}:3000 \
  -d faucet.${DOMAIN_NAME}:3001 || true
