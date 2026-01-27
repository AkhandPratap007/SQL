-- 1321. Restaurant Growth

-- You are the restaurant owner and you want to analyze a possible expansion (there will be at least one customer every day).
-- Compute the moving average of how much the customer paid in a seven days window (i.e., current day + 6 days before). average_amount should be rounded to two decimal places.

-- Return the result table ordered by visited_on in ascending order.
-- The result format is in the following example.

WITH day_wise AS (
    SELECT
        visited_on,
        SUM(amount) AS amount
    FROM Customer
    GROUP BY visited_on
),
coupled AS (
    SELECT
        visited_on,
        SUM(amount) OVER (
            ORDER BY visited_on
            ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
        ) AS amount,
        ROUND(
            AVG(amount) OVER (
                ORDER BY visited_on
                ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
            ), 2
        ) AS average_amount,
        ROW_NUMBER() OVER (ORDER BY visited_on) AS rn
    FROM day_wise
)
SELECT
    visited_on,
    amount,
    average_amount
FROM coupled
WHERE rn >= 7;
