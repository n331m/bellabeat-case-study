-- Average daily steps: weekday vs weekend

SELECT
  CASE
    WHEN EXTRACT(DAYOFWEEK FROM ActivityDate) IN (1,7)
    THEN 'Weekend'
    ELSE 'Weekday'
  END AS day_type,

  AVG(TotalSteps) AS avg_steps

FROM `my-project-93380-develop.bellabeat_project.activity`

GROUP BY day_type;



-- Correlation between steps and calories burned

SELECT
  CORR(TotalSteps, Calories) AS correlation
FROM `my-project-93380-develop.bellabeat_project.activity`
WHERE TotalSteps > 0;