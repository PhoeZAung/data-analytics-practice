/*
Histogram of Tweets (DataLemur)
https://datalemur.com/questions/sql-histogram-tweets

Table: tweets(tweet_id, user_id, msg, tweet_date)
Task: histogram of tweets per user in 2022.
  Output: tweet_bucket (tweets per user), users_num (users in that bucket).
Trick: two GROUP BYs — inner counts tweets per user,
  outer buckets users by that count.
*/


SELECT tweet_bucket,
       COUNT(*) AS users_num
FROM (
  --Inner Query: Number of tweets per user
  SELECT COUNT(user_id) AS tweet_bucket
  FROM tweets
  WHERE tweet_date >= '2022-01-01'
    AND tweet_date < '2023-01-01'
  GROUP BY user_id
) AS counted_tweet
--Outer Query: Number of users in each bucket
GROUP BY tweet_bucket
ORDER BY tweet_bucket;