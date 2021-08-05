#!/bin/bash
../../hadoop/sbin/stop-dfs.sh
../../hadoop/bin/hadoop namenode -format

../../hadoop/sbin/start-dfs.sh

../../hadoop/bin/hadoop fs -mkdir /user /user/marcelo /user/marcelo/wordcount /user/marcelo/wordcount/input
../../hadoop/bin/hadoop fs -put wordcount_0* /user/marcelo/wordcount/input

../../hadoop/bin/hadoop fs -rm -r /user/marcelo/wordcount/output

../../hadoop/bin/hadoop jar target/wordcount-1.0-SNAPSHOT.jar com.wordcount.Main /user/marcelo/wordcount/input /user/marcelo/wordcount/output

../../hadoop/bin/hadoop fs -cat /user/marcelo/wordcount/output/*
