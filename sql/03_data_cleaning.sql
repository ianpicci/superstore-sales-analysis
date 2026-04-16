-- =========================================
-- DATA CLEANING
-- =========================================

-- Creating a clean table from the raw dataset

-- Adjustments made:
-- Standardization of column names
-- Dates conversion to YYYY-MM-DD format
-- Conversion of 'Sales' and 'Profit' to number
-- Rounding to 2 decimal places.


CREATE TABLE samplesuperstore_clean AS
SELECT
    [Row ID] AS row_id,
    [Order ID] AS order_id,

    -- Order Date Conversion
    substr([Order Date], -4) || '-' ||
    printf('%02d', CAST(substr([Order Date], 1, instr([Order Date], '/') - 1) AS INTEGER)) || '-' ||
    printf(
        '%02d',
        CAST(
            substr(
                [Order Date],
                instr([Order Date], '/') + 1,
                instr(substr([Order Date], instr([Order Date], '/') + 1), '/') - 1
            ) AS INTEGER
        )
    ) AS order_date,

    -- Ship Date Conversion
    substr([Ship Date], -4) || '-' ||
    printf('%02d', CAST(substr([Ship Date], 1, instr([Ship Date], '/') - 1) AS INTEGER)) || '-' ||
    printf(
        '%02d',
        CAST(
            substr(
                [Ship Date],
                instr([Ship Date], '/') + 1,
                instr(substr([Ship Date], instr([Ship Date], '/') + 1), '/') - 1
            ) AS INTEGER
        )
    ) AS ship_date,

    [Ship Mode] AS ship_mode,
    [Customer ID] AS customer_id,
    [Customer Name] AS customer_name,
    Segment AS segment,
    [Country/Region] AS country,
    City AS city,
    [State/Province] AS state,
    [Postal Code] AS postal_code,
    Region AS region,
    [Product ID] AS product_id,
    Category AS category,
    [Sub-Category] AS sub_category,
    [Product Name] AS product_name,

    ROUND(CAST(Sales AS REAL), 2) AS sales,
    CAST(Quantity AS INTEGER) AS quantity,
    CAST(Discount AS REAL) AS discount,
    ROUND(CAST(Profit AS REAL), 2) AS profit

FROM samplesuperstore;