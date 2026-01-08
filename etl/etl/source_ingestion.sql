-- ingestion layer for Global Markets trades

SELECT
    trade_id,
    trade_date,
    asset_class,
    trade_amount,
    settlement_date,
    settlement_status,
    'FX' AS source_system
FROM source_fx_trades

UNION ALL

SELECT
    trade_id,
    trade_date,
    asset_class,
    trade_amount,
    settlement_date,
    settlement_status,
    'BONDS' AS source_system
FROM source_bond_trades;
