-- Reconciliation classification logic

SELECT
    trade_id,
    asset_class,
    trade_amount,
    settlement_date,
    settlement_status,
    CASE
        WHEN settlement_status = 'SETTLED' THEN 'CLEARED'
        WHEN settlement_status = 'FAILED' THEN 'UNMATCHED'
        ELSE 'OPEN'
    END AS reconciliation_status
FROM global_markets_trades;
