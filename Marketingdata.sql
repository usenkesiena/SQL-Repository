SELECT * FROM Marketingdata;

--1.Campaign Performance:
--Identify the campaign with the highest impressions, clicks, and conversions.
SELECT TOP 1 Campaign
Campaign,
SUM(Impressions) Impressions, 
SUM(Clicks) Clicks,
SUM(Conversions) Conversions
FROM Marketingdata
GROUP BY Campaign
ORDER BY Impressions DESC, Clicks DESC , Conversions DESC;


--- for the 3 campaigns
SELECT 
    Campaign,
    SUM(LIKES_REACTIONS) Likes,
    Round(SUM(impressions),0) AS Total_impressions,
    SUM(clicks) AS Total_clicks,
    SUM(conversions) AS Total_conversions
FROM Marketingdata
GROUP BY Campaign
ORDER BY total_impressions DESC; 



--1b. Determine the average cost-per-click (CPC) and click-through rate (CTR) for each campaign.
SELECT CAMPAIGN,
ROUND(AVG(Daily_average_cpc),2) AVG_CPC,
       ROUND(AVG(CTR),2) AVG_CTR
       FROM Marketingdata
       GROUP BY Campaign
       ORDER BY AVG_CPC DESC,AVG_CTR DESC;

--2.Channel Effectiveness:
--Find the channel with the highest ROI.
WITH channel_roi AS (
    SELECT
        Channel,
        SUM(SPEND_GBP) SPEND,
       CONCAT(ROUND((SUM(Total_conversion_value_GBP) - SUM(Spend_GBP)) / SUM(Spend_GBP),1),'%')  AS ROI
    FROM
        Marketingdata
    GROUP BY
        Channel
)
SELECT TOP 1
    Channel,
    ROI
FROM
    channel_roi
ORDER BY
  ROI ASC;


-- ADS AND THEIR ROI
     SELECT
        Ad,
        SUM(SPEND_GBP) SPEND,
      CONCAT(ROUND((SUM(Total_conversion_value_GBP) - SUM(Spend_GBP)) / SUM(Spend_GBP),1), '%')   AS ROI
    FROM
        Marketingdata
    GROUP BY
        Ad;

-- CITIES AND THEIR ROI
         SELECT
        City_Location,
        SUM(SPEND_GBP) SPEND,
       CONCAT( ROUND((SUM(Total_conversion_value_GBP) - SUM(Spend_GBP)) / SUM(Spend_GBP),1), '%') AS ROI
    FROM
        Marketingdata
    GROUP BY
        City_Location
        ORDER BY City_Location ASC;






--2b. Compare impressions, clicks, and conversions across different channels.

SELECT 
    Channel,
    ROUND(SUM(impressions),0) AS Total_impressions,
    SUM(clicks) AS Total_clicks,
    SUM(conversions) AS Total_conversions
FROM Marketingdata
GROUP BY Channel
ORDER BY total_impressions DESC,total_clicks DESC, total_conversions DESC; 

 

 -- for campaigns using total conversions
SELECT 
    Campaign,
    ROUND(SUM(impressions),0) AS Total_impressions,
    SUM(clicks) AS Total_clicks,
    ROUND(SUM(Total_conversion_value_GBP),0) AS Total_conversions
FROM Marketingdata
GROUP BY Campaign
ORDER BY total_impressions DESC,total_clicks DESC, total_conversions DESC; 



---3.Geographical Insights:
--Identify cities with the highest engagement rates (likes, shares, comments).
SELECT City_Location, 
   SUM(Likes_Reactions) Likes, 
   SUM(Shares) Shares, 
   SUM(Comments) Comments
FROM Marketingdata
GROUP BY City_Location
ORDER BY Likes DESC,Shares DESC, Comments DESC;


--3b Determine the conversion rate by city.
-- Calculate conversion rate by city
SELECT
    City_Location,
    SUM(Conversions) AS Total_Conversions,
    ROUND(SUM(Impressions),0) AS Total_impressions,
  CONCAT(ROUND ((SUM(Conversions) / SUM(Impressions)) * 100 ,3) , '%')  Conversion_Rate_Percentage
FROM
    marketingdata
GROUP BY
    City_Location;



---* 4.Device Performance:
--Compare ad performance across different devices (mobile, desktop, tablet).
SELECT Ad, 
Device,
ROUND(SUM(Impressions),0) Impressions,
SUM(Conversions) Conversions,
SUM((Likes_Reactions + Shares + Comments)) Engagement
FROM Marketingdata
GROUP BY Ad, Device
ORDER BY Impressions DESC, Conversions DESC , Engagement DESC;



--4b. Identify the device type generating the highest conversion rates.
SELECT TOP 1 Ad,
  CONCAT(ROUND ((SUM(Conversions) / SUM(Impressions)) * 100 ,3) , '%')  Conversion_Rate_Percentage
FROM Marketingdata
GROUP BY Ad
ORDER BY Conversion_Rate_Percentage DESC


--5.Ad-Level Analysis:
---Identify the best-performing ads in terms of engagement and conversions.
SELECT TOP 1 Ad, 
SUM((Likes_Reactions + Shares + Comments)) Engagement,
 SUM(Conversions) Conversions
FROM Marketingdata
GROUP BY Ad
ORDER BY Engagement DESC, Conversions DESC;



-- For ads using total conversion
SELECT  Ad, 
SUM((Likes_Reactions + Shares + Comments)) Engagement,
 ROUND(SUM(Total_conversion_value_GBP),0) Conversions
FROM Marketingdata
GROUP BY Ad
ORDER BY Engagement DESC, Conversions DESC;

 
 --- for campaign
SELECT Campaign, 
SUM(Spend_GBP) SPEND,
SUM((Likes_Reactions + Shares + Comments)) Engagement,
 ROUND(SUM(Total_conversion_value_GBP),0) Conversions
FROM Marketingdata
GROUP BY Campaign
ORDER BY Engagement DESC, Conversions DESC;


-- for channels
SELECT Channel, 
SUM(Spend_GBP) SPEND,
SUM((Likes_Reactions + Shares + Comments)) Engagement,
 ROUND(SUM(Total_conversion_value_GBP),0) Conversions
FROM Marketingdata
GROUP BY Channel
ORDER BY Engagement DESC, Conversions DESC;


-- for cities
SELECT City_Location, 
SUM(Spend_GBP) SPEND,
SUM((Likes_Reactions + Shares + Comments)) Engagement,
 ROUND(SUM(Total_conversion_value_GBP),0) Conversions
FROM Marketingdata
GROUP BY City_Location
ORDER BY Engagement DESC, Conversions DESC;

---Determine common characteristics of high-performing ads
--- high conversion rates, high click-through rates (CTR), 
-- low cost-per-click (CPC), strong engagement metrics (likes, shares, comments), and optimized targeting.

--6.ROI Calculation:
--Calculate ROI for each campaign and compare it across different channels and devices.

    SELECT
        Campaign,
        Channel,
        Device,
        CONCAT (ROUND((SUM(Total_conversion_value_GBP) - SUM(Spend_GBP)) / SUM(Spend_GBP),1), '%') AS ROI
    FROM
        Marketingdata
    GROUP BY
        Campaign,Channel, Device
        ORDER BY ROI DESC;

--Analyze the correlation between spend and conversion value across different campaigns.
SELECT 
    Campaign,
    SUM(Spend_GBP) AS Total_spend,
    SUM(Conversions) AS Total_conversion_value
FROM 
    Marketingdata
GROUP BY 
    campaign
    ORDER BY Total_spend DESC, Total_conversion_value DESC;

-- FOR CHANNELS
SELECT 
    Channel,
    SUM(Spend_GBP) AS Total_spend,
    ROUND(SUM(Total_conversion_value_GBP),2) AS Total_conversion_value
FROM 
    Marketingdata
GROUP BY 
    Channel
    ORDER BY Total_spend DESC, Total_conversion_value DESC;

---7.Time Series Analysis:
--Identify trends or seasonal effects in ad performance over time.
-- Aggregate data by month
SELECT
    DATENAME(MONTH, [Date]) Month  ,
    ROUND(SUM(Impressions),0) AS Total_Impressions,
    SUM(Clicks) AS Total_Clicks,
    SUM(Spend_GBP) AS Total_Spend,
    SUM(Conversions) AS Total_Conversions
FROM
    marketingdata
GROUP BY
   Date
ORDER BY
    DATE, Total_Impressions DESC;

--Track fluctuations in daily impressions, clicks, spend, and conversions over the campaign period.
SELECT Campaign,
DATENAME(DAY,[Date]) Day,
ROUND(SUM(Impressions),0) Impressions,
SUM(Clicks) Clicks,
SUM(Spend_GBP) Spend_GBP,
SUM(Conversions) Conversions
FROM Marketingdata
Group by Campaign , [Date]
ORDER BY [Date]