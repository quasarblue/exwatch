delete from cmc_api_exchange;
\copy cmc_api_exchange(id, name, weekly_visits, spot_volume_usd) from './data/cmc_api_exchanges.csv' delimiter ';' null as 'null' csv;
