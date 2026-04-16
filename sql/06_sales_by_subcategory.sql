-- =========================================
-- SALES AND PROFIT BY SUB-CATEGORY
-- =========================================

SELECT
    sub_category,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM samplesuperstore_clean
GROUP BY sub_category
ORDER BY total_profit ASC;