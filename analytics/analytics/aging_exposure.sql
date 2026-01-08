-- Aging and exposure analysis for unsettled trades

SELECT
    asset_class,
    reconciliation_status,
    COUNT(*) AS trade_count,
    SUM(trade_amount) AS total_exposure,
    AVG(DATEDIFF(day, trade_date, CURRENT_DATE)) AS average_age_days
FROM global_markets_trades
WHERE settlement_status <> 'SETTLED'
GROUP BY asset_class, reconciliation_status;
