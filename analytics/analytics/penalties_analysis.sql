-- Penalty risk identification for late settlements

SELECT
    trade_id,
    asset_class,
    trade_amount,
    settlement_date,
    DATEDIFF(day, settlement_date, CURRENT_DATE) AS days_late,
    CASE
        WHEN DATEDIFF(day, settlement_date, CURRENT_DATE) > 2 THEN 'HIGH RISK'
        WHEN DATEDIFF(day, settlement_date, CURRENT_DATE) > 0 THEN 'MEDIUM RISK'
        ELSE 'ON TIME'
    END AS penalty_risk
FROM global_markets_trades;
