-- =========================================
-- SALES AND PROFIT BY CATEGORY
-- =========================================

SELECT
    category,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM samplesuperstore_clean
GROUP BY category
ORDER BY total_sales DESC;