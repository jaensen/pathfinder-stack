#!/bin/bash
if [ ! -d "./pathfinder2-updater" ]; then
  git clone https://github.com/CirclesUBI/pathfinder2-updater.git
fi
if [ ! -d "./blockchain-indexer" ]; then
  git clone https://github.com/CirclesUBI/blockchain-indexer.git
  cd blockchain-indexer
  git checkout aarch64-compatible
  cd ..
fi
if [ ! -d "./pathfinder2" ]; then
  git clone https://github.com/CirclesUBI/pathfinder2.git
fi
if [ ! -d "./pathfinder-proxy" ]; then
  git clone https://github.com/CirclesUBI/pathfinder-proxy.git
fi

cd docker
docker compose up -d
