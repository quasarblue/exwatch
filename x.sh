#!/bin/bash
read -r CMC_API_KEY
curl -s -H "X-CMC_PRO_API_KEY: $CMC_API_KEY" -H "Accept: application/json" -d "" -G "https://pro-api.coinmarketcap.com/v1/exchange/map" | jq '.data[] | .id, .name' | awk '{id=$0; getline; name=$0; print id ";" name}'| sed 's/"//g' | awk 'BEGIN{FS=";"}{print $1}'> $HOME/git/exwatch/data/cmc_api_exchanges_id.csv 
while read id
do
  curl -s -H "X-CMC_PRO_API_KEY: $CMC_API_KEY" -H "Accept: application/json" -d "id=$id" -G "https://pro-api.coinmarketcap.com/v1/exchange/info" | jq '.data[] | .id, .name, .weekly_visits, .spot_volume_usd'|awk '{id=$0; getline; name=$0; getline; wv=$0; getline; sv=$0; print id ";" name ";" wv ";" sv}'| sed 's/"//g'
  sleep 2
done < "${1:-$HOME/git/exwatch/data/cmc_api_exchanges_id.csv}"

#xargs -I{} curl -s -H "X-CMC_PRO_API_KEY: $CMC_API_KEY" -H "Accept: application/json" -d 'id={}' -G "https://pro-api.coinmarketcap.com/v1/exchange/info"
