#!/bin/bash

pkill -f lua
pkill -f love

rm results/n*.txt

nNodes=$1
nNodesPerRow=$2

curDir=$(pwd)
lovePath='/Applications/love.app/Contents/MacOS/love'

echo "Running ${lovePath} ${curDir} for all 0-${nNodes} nodes (${nNodesPerRow} per row)..."

for i in $(seq 0 $nNodes); do `${lovePath} ${curDir} ${i} ${nNodesPerRow} > results/n${i}.txt &`; done