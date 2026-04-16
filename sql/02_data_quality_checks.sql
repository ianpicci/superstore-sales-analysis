-- =========================================
-- DATA QUALITY CHECKS
-- =========================================

-- Total lines
SELECT COUNT(*) AS total_lines
FROM samplesuperstore;

-- Initial visualization
SELECT *
FROM samplesuperstore
LIMIT 10;

-- Checking for empty values in 'Sales' and 'Profit'
SELECT
    SUM(CASE WHEN Sales IS NULL OR TRIM(Sales) = '' THEN 1 ELSE 0 END) AS sales_vazios,
    SUM(CASE WHEN Profit IS NULL OR TRIM(Profit) = '' THEN 1 ELSE 0 END) AS profit_vazios
FROM samplesuperstore;

-- Duplicates check by 'Row ID'
SELECT
    [Row ID],
    COUNT(*) AS qtd
FROM samplesuperstore
GROUP BY [Row ID]
HAVING COUNT(*) > 1;