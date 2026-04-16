-- =========================================
-- DISCOUNT VS PROFIT ANALYSIS
-- =========================================

SELECT
    sub_category,
    ROUND(AVG(discount), 2) AS avg_discount,
    ROUND(SUM(profit), 2) AS total_profit
FROM samplesuperstore_clean
GROUP BY sub_category
ORDER BY avg_discount DESC;