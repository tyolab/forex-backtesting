#!/bin/bash

node --nouse-idle-notification --max-old-space-size=31000 --expose-gc `which gulp` forwardtest --symbol $1 --parser ctoption --data ./data/ctoption/$1.csv --investment 1000 --profitability 0.76 --database forex-backtesting
