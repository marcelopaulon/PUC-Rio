#!/bin/bash
#inet omnetpp.ini -u Cmdenv -c "MAM50-BMRELAY-13mps"

cat mamSim.ini | ggrep -P '\[Config ' | sed 's/\[Config \(.*\)\]/ mamSim.ini -u Cmdenv -c "\1"/' | xargs -L1 inet --release

