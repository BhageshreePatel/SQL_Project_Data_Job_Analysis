/*
QUESTION:: What are the most in-demand skills for data analyst?
            - join job postings to inner join table similer to query 2
            - Identify the top 5 in-demand skills for a data analyst.
            - Focus on all job postings.
            - Why? Retrives the top 5 skills with the highest demand in the job market,
                providing insights into the most valuable skills for job seekers.
*/

SELECT
*
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
LIMIT 10