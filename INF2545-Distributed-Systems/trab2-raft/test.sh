#!/bin/bash

pkill -f lua

rm results/c*.txt
rm results/s*.txt

now=$(date +"%m_%d_%Y-%H-%M-%S")

nServers=$1

idxPort=12001

ports="$idxPort"

for i in $(seq 2 $nServers); do idxPort=$(($idxPort + 1)); ports="${ports},${idxPort}"; done

echo $ports > ports.txt

echo "Starting ${nServers} server processes (ports=${ports})"
for i in $(seq 1 $nServers); do `lua server.lua ${i} > results/s${i}.txt &`; done

echo 'Running servers'
for i in $(seq 1 $nServers); do `lua test.lua ${i} > results/c${i}.txt &`; done

echo 'Waiting 20s'
sleep 20s

echo 'For each server, stop it for 20 seconds, then resume it... (this might take a while)'
for i in $(seq 1 $nServers); do echo "Stopping and resuming server ${i}.." ; `lua stop.lua ${i} >/dev/null` ; sleep 20s ; `lua resume.lua ${i} >/dev/null`; done

sleep 20s

cat results/s*.txt | sort -n > results/merged-${now}.txt

pkill -f lua

echo "Done"