create user nem with encrypted password 'nem';
create database exwatch with owner='nem' ENCODING='UTF-8' LC_COLLATE='en_US.utf8' LC_CTYPE='en' TEMPLATE='template0';

CREATE TABLE public.cmc_exchange_checklist (
   id int generated always as identity,
   name varchar(200) null,
   score numeric(3,2) null,
   volume24h float4 null,
   liquidity float4 null,
   visitswek numeric(10) null,
   xem boolean null,
   xym boolean null,
   blockers varchar(50) null,
   PRIMARY KEY(id)
);

\copy cmc_exchange_checklist(name, score, volume24h, liquidity, visitswek, xem, xym, blockers) from 'cmc-copy.csv' delimiter ';' null as 'null' header csv;

CREATE TABLE PUBLIC.cmc_api_exchange (
  id int,
  name varchar(200),
  weekly_visits numeric(10) null,
  spot_volume_usd float4 null,
  PRIMARY KEY(id)
)

update cmc_exchange_checklist set cmc_api_id=sub.id from (select id, name from cmc_api_exchange ) as sub where cmc_exchange_checklist.name=sub.name
