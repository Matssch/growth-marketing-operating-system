-- Growth Marketing Operating System
-- Synthetic example queries.
-- Written to demonstrate the questions I would want the data to answer.

-- 1. Pipeline by acquisition channel
SELECT
    acquisition_channel,
    COUNT(DISTINCT opportunity_id) AS opportunities,
    SUM(pipeline_value) AS pipeline_value
FROM opportunities
GROUP BY acquisition_channel
ORDER BY pipeline_value DESC;


-- 2. Cost per opportunity and pipeline per euro by channel
WITH spend AS (
    SELECT
        channel,
        SUM(spend) AS total_spend
    FROM campaigns
    GROUP BY channel
),
pipeline AS (
    SELECT
        acquisition_channel AS channel,
        COUNT(DISTINCT opportunity_id) AS opportunities,
        SUM(pipeline_value) AS pipeline_value
    FROM opportunities
    GROUP BY acquisition_channel
)
SELECT
    s.channel,
    s.total_spend,
    p.opportunities,
    p.pipeline_value,
    ROUND(s.total_spend / NULLIF(p.opportunities, 0), 2) AS cost_per_opportunity,
    ROUND(p.pipeline_value / NULLIF(s.total_spend, 0), 2) AS pipeline_per_euro
FROM spend s
LEFT JOIN pipeline p
    ON s.channel = p.channel
ORDER BY pipeline_per_euro DESC;


-- 3. Funnel quality by segment
SELECT
    segment,
    COUNT(DISTINCT lead_id) AS leads,
    COUNT(DISTINCT CASE WHEN became_opportunity = 1 THEN lead_id END) AS opportunity_leads,
    ROUND(
        100.0 * COUNT(DISTINCT CASE WHEN became_opportunity = 1 THEN lead_id END)
        / NULLIF(COUNT(DISTINCT lead_id), 0),
        2
    ) AS lead_to_opportunity_rate
FROM leads
GROUP BY segment
ORDER BY lead_to_opportunity_rate DESC;


-- 4. High-fit accounts with strong engagement
SELECT
    account_name,
    segment,
    icp_fit_score,
    intent_score,
    engagement_score,
    commercial_potential_score,
    (
        icp_fit_score +
        intent_score +
        engagement_score +
        commercial_potential_score
    ) AS priority_score
FROM accounts
WHERE icp_fit_score >= 4
ORDER BY priority_score DESC;


-- 5. Month-over-month CAC by channel
SELECT
    month,
    channel,
    SUM(spend) AS spend,
    SUM(new_customers) AS new_customers,
    ROUND(
        SUM(spend) / NULLIF(SUM(new_customers), 0),
        2
    ) AS cac
FROM campaign_monthly_performance
GROUP BY month, channel
ORDER BY month, channel;
