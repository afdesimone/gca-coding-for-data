--==========================================================================
--Milestone 1: YouTube Trending Analysis
--Role: Junior Data Analyst – Digital Media Consultancy
--Dataset: youtube.trending (US trending videos, Nov 2017 – Jun 2018)

--Objective:
--Analyze user engagement metrics (likes, dislikes, comments) to understand
--how engagement is distributed among trending videos.
--==========================================================================

-- Most-liked video
SELECT
    title,
    channel_title,
    likes
FROM youtube.trending
ORDER BY likes DESC
LIMIT 1;


-- Most-disliked video
SELECT
    title,
    channel_title,
    dislikes
FROM youtube.trending
ORDER BY dislikes DESC
LIMIT 1;


-- Most-commented video
SELECT
    title,
    channel_title,
    comment_count
FROM youtube.trending
ORDER BY comment_count DESC
LIMIT 1;


-- Top 10 videos by comment count
SELECT
    title,
    channel_title,
    comment_count
FROM youtube.trending
ORDER BY comment_count DESC
LIMIT 10;


-- 100th-ranked video by comment count
SELECT
    title,
    channel_title,
    comment_count
FROM youtube.trending
ORDER BY comment_count DESC
OFFSET 99
LIMIT 1;


-- 1000th-ranked video by comment count
SELECT
    title,
    channel_title,
    comment_count
FROM youtube.trending
ORDER BY comment_count DESC
OFFSET 999
LIMIT 1;
