#!/bin/bash
psql -d exwatch -U nem -f $HOME/git/exwatch/db/copy-cmc_api_exchanges.sql
psql -d exwatch -U nem -f $HOME/git/exwatch/db/update-cmc_api_exchange_data.sql
