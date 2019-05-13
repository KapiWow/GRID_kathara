CREATE TABLE public.trades
(
  time TIMESTAMPTZ NOT NULL,
  label character varying(256),
  trade_id bigint NOT NULL,
  price numeric(20,8) NOT NULL,
  amount numeric(20,8) NOT NULL,
  maker boolean NOT NULL,
  UNIQUE(time, label, trade_id)
);

CREATE TABLE public.depths
(
  "time" TIMESTAMPTZ NOT NULL,
  label character varying,
  asks double precision[],
  bids double precision[]
);

CREATE TABLE public.candles
(
  "time" TIMESTAMPTZ NOT NULL,
  label character varying,
 	open numeric(20,8),
 	high numeric(20,8),
 	low numeric(20,8),
 	close numeric(20,8),
 	vol numeric(20,8),
  UNIQUE(time, label)
);

 CREATE TABLE public.labels
(
  label character varying(256)
);

 INSERT INTO labels (label) VALUES ('bchsvusdt');
 INSERT INTO labels (label) VALUES ('bchabcusdt');
 INSERT INTO labels (label) VALUES ('bchsvbtc');
 INSERT INTO labels (label) VALUES ('bchabcbtc');
 INSERT INTO labels (label) VALUES ('nulsbtc');
 INSERT INTO labels (label) VALUES ('xrpbtc');
 INSERT INTO labels (label) VALUES ('bccbtc');
 INSERT INTO labels (label) VALUES ('ethbtc');
 INSERT INTO labels (label) VALUES ('xlmbtc');
 INSERT INTO labels (label) VALUES ('eosbtc');
 INSERT INTO labels (label) VALUES ('adabtc');
 INSERT INTO labels (label) VALUES ('batbtc');
 INSERT INTO labels (label) VALUES ('paxbtc');
 INSERT INTO labels (label) VALUES ('phxbtc');
 INSERT INTO labels (label) VALUES ('trxbtc');
 INSERT INTO labels (label) VALUES ('bnbbtc');
 INSERT INTO labels (label) VALUES ('rvnbtc');
 INSERT INTO labels (label) VALUES ('ltcbtc');
 INSERT INTO labels (label) VALUES ('zecbtc');
 INSERT INTO labels (label) VALUES ('tusdbtc');
 INSERT INTO labels (label) VALUES ('qkcbtc');
 INSERT INTO labels (label) VALUES ('zrxbtc');
 INSERT INTO labels (label) VALUES ('neobtc');
 INSERT INTO labels (label) VALUES ('gvtbtc');
 INSERT INTO labels (label) VALUES ('gobtc');
 INSERT INTO labels (label) VALUES ('vetbtc');
 INSERT INTO labels (label) VALUES ('xmrbtc');
 INSERT INTO labels (label) VALUES ('rcnbtc');
 INSERT INTO labels (label) VALUES ('etcbtc');
 INSERT INTO labels (label) VALUES ('dashbtc');
 INSERT INTO labels (label) VALUES ('icxbtc');
 INSERT INTO labels (label) VALUES ('mftbtc');
 INSERT INTO labels (label) VALUES ('arnbtc');
 INSERT INTO labels (label) VALUES ('omgbtc');
 INSERT INTO labels (label) VALUES ('keybtc');
 INSERT INTO labels (label) VALUES ('dockbtc');
 INSERT INTO labels (label) VALUES ('ostbtc');
 INSERT INTO labels (label) VALUES ('xvgbtc');
 INSERT INTO labels (label) VALUES ('iotabtc');
 INSERT INTO labels (label) VALUES ('npxsbtc');
 INSERT INTO labels (label) VALUES ('iostbtc');
 INSERT INTO labels (label) VALUES ('iotxbtc');
 INSERT INTO labels (label) VALUES ('ontbtc');
 INSERT INTO labels (label) VALUES ('agibtc');
 INSERT INTO labels (label) VALUES ('zilbtc');
 INSERT INTO labels (label) VALUES ('hotbtc');
 INSERT INTO labels (label) VALUES ('yoyobtc');
 INSERT INTO labels (label) VALUES ('nanobtc');
 INSERT INTO labels (label) VALUES ('polybtc');
 INSERT INTO labels (label) VALUES ('bcptbtc');
 INSERT INTO labels (label) VALUES ('wtcbtc');
 INSERT INTO labels (label) VALUES ('linkbtc');
 INSERT INTO labels (label) VALUES ('lskbtc');
 INSERT INTO labels (label) VALUES ('skybtc');
 INSERT INTO labels (label) VALUES ('vibbtc');
 INSERT INTO labels (label) VALUES ('wanbtc');
 INSERT INTO labels (label) VALUES ('ncashbtc');
 INSERT INTO labels (label) VALUES ('funbtc');
 INSERT INTO labels (label) VALUES ('bcdbtc');
 INSERT INTO labels (label) VALUES ('aebtc');
 INSERT INTO labels (label) VALUES ('btgbtc');
 INSERT INTO labels (label) VALUES ('fuelbtc');
 INSERT INTO labels (label) VALUES ('ambbtc');
 INSERT INTO labels (label) VALUES ('poebtc');
 INSERT INTO labels (label) VALUES ('cdtbtc');
 INSERT INTO labels (label) VALUES ('insbtc');
 INSERT INTO labels (label) VALUES ('qtumbtc');
 INSERT INTO labels (label) VALUES ('aionbtc');
 INSERT INTO labels (label) VALUES ('stormbtc');
 INSERT INTO labels (label) VALUES ('wabibtc');
 INSERT INTO labels (label) VALUES ('scbtc');
 INSERT INTO labels (label) VALUES ('tnbbtc');
 INSERT INTO labels (label) VALUES ('xembtc');
 INSERT INTO labels (label) VALUES ('poabtc');
 INSERT INTO labels (label) VALUES ('bqxbtc');
 INSERT INTO labels (label) VALUES ('saltbtc');
 INSERT INTO labels (label) VALUES ('elfbtc');
 INSERT INTO labels (label) VALUES ('neblbtc');
 INSERT INTO labels (label) VALUES ('dentbtc');
 INSERT INTO labels (label) VALUES ('snmbtc');
 INSERT INTO labels (label) VALUES ('blzbtc');
 INSERT INTO labels (label) VALUES ('gtobtc');
 INSERT INTO labels (label) VALUES ('mdabtc');
 INSERT INTO labels (label) VALUES ('astbtc');
 INSERT INTO labels (label) VALUES ('wprbtc');
 INSERT INTO labels (label) VALUES ('dntbtc');
 INSERT INTO labels (label) VALUES ('btcusdt');
 INSERT INTO labels (label) VALUES ('ethusdt');
 INSERT INTO labels (label) VALUES ('ltcusdt');
 INSERT INTO labels (label) VALUES ('ltceth');
 INSERT INTO labels (label) VALUES ('etceth');
 INSERT INTO labels (label) VALUES ('etcusdt');
 INSERT INTO labels (label) VALUES ('zeceth');
 INSERT INTO labels (label) VALUES ('xrpusdt');
 INSERT INTO labels (label) VALUES ('eosusdt');
 INSERT INTO labels (label) VALUES ('eoseth');
 INSERT INTO labels (label) VALUES ('bnbusdt');
 INSERT INTO labels (label) VALUES ('bccusdt');
 INSERT INTO labels (label) VALUES ('neousdt');
 INSERT INTO labels (label) VALUES ('qtumusdt');
 INSERT INTO labels (label) VALUES ('adausdt');
 INSERT INTO labels (label) VALUES ('tusdusdt');
 INSERT INTO labels (label) VALUES ('iotausdt');
 INSERT INTO labels (label) VALUES ('xlmusdt');
 INSERT INTO labels (label) VALUES ('ontusdt');
 INSERT INTO labels (label) VALUES ('trxusdt');
 INSERT INTO labels (label) VALUES ('icxusdt');
 INSERT INTO labels (label) VALUES ('venusdt');
 INSERT INTO labels (label) VALUES ('nulsusdt');
 INSERT INTO labels (label) VALUES ('vetusdt');
 INSERT INTO labels (label) VALUES ('paxusdt');
