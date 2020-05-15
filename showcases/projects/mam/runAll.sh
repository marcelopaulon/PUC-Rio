#!/bin/bash
#inet omnetpp.ini -u Cmdenv -c "MAM50-BMRELAY-13mps"

cat omnetpp.ini | grep -P '\[Config ' | sed 's/\[Config \(.*\)\]/ omnetpp.ini -u Cmdenv -c "\1"/' | xargs -L1 inet

