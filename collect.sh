#!/bin/bash

echo "time,already_mined,ready,pending" > mempool.csv
while true; do
    output=$(~/work/stacks-blockchain-develop/target/release/stacks-inspect analyze-mempool ~/stacks-node/data 10 30000)
    echo $output >> mempool.csv
    spaced=$(echo $output | sed 's/,/ /g')
    node app.js $spaced
    sleep 30
done
