-- Data quality validation checks

SELECT * FROM global_markets_trades WHERE trade_id IS NULL;
SELECT * FROM global_markets_trades WHERE trade_amount <= 0;
SELECT * FROM global_markets_trades WHERE settlement_date < trade_date;
