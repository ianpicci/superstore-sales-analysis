-- =========================================
-- INITIAL BUSINESS ANALYSIS
-- =========================================

-- Key buisness KPI's

SELECT
    COUNT(*) AS total_lines,
    COUNT(DISTINCT order_id) AS total_orders,
    COUNT(DISTINCT customer_id) AS total_clients,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    SUM(quantity) AS total_quantity
FROM samplesuperstore_clean;