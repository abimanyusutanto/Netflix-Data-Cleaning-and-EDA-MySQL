# **Netflix Data Analysis Using MySQL**

## **Project Overview**

This project demonstrates the entire process of data cleaning and exploratory data analysis (EDA) using only MySQL on a Netflix dataset sourced from Kaggle. The goal is to showcase how effective data manipulation and analysis can be achieved solely with SQL, providing a clear, step-by-step approach that is both reproducible and educational. Information about the dataset used can be seen [here](https://www.kaggle.com/datasets/ariyoomotade/netflix-data-cleaning-analysis-and-visualization)

## **Objectives**

- Identify and eliminate duplicate records to ensure data accuracy.
- Replace or remove missing data based on logical imputation methods.
- Ensure consistency in date formats, text casing, and categorical values.
- Convert columns to appropriate data types for better storage and performance.
- Summarize key metrics such as content distribution by genre, release year, and ratings.
- Identify trends and patterns in Netflix's content library.

## Data Cleaning Process

1. **Creating a Backup of the Original Dataset**

   Before making any modifications, a backup of the original dataset is created to ensure that any unintended errors can be reverted. This is done by duplicating the netflix table into a new table named netflix2.

   ![image](https://github.com/user-attachments/assets/b056dafe-be38-4bc0-96d6-ee0e8e7071e5)

   Having a backup allows for safe experimentation and prevents data loss.

2. **Checking for Duplicate Records**

   A Common Table Expression (CTE) is used to detect duplicate records by assigning a row number to each entry based on key attributes such as show_id, type, title, director, country, date_added, release_year, rating, duration, and listed_in.

   ![image](https://github.com/user-attachments/assets/c615a07a-876f-40f7-b3d5-bb7a393fc161)

   The query confirms that there are no duplicate records in the dataset.

3. **Validating Column Consistency**

   To ensure data consistency, DISTINCT queries are used to check for any typos or inconsistencies in key categorical columns.

   ![image](https://github.com/user-attachments/assets/fdbecef2-68ed-40a2-9a88-aa129ef40b82)

   If any unexpected variations were found, further cleaning steps would be necessary. However, in this case, no major issues were identified.

4. **Standardizing Date Format**

   The date_added column, originally stored as text, is converted into a proper DATE format for better query performance and accuracy.

   ![image](https://github.com/user-attachments/assets/37a47481-bd3b-4277-b2c3-37a0ace339ba)

   This transformation ensures that the column can be used for date-based queries and analysis.

5. **Checking for Missing Values**

   A query is run to identify any missing or null values in critical columns such as show_id, type, title, director, country, date_added, release_year, and listed_in.

   ![image](https://github.com/user-attachments/assets/1e0890af-37fc-4edd-982f-be7ec537f203)

   The results confirm that there are no missing values in the dataset, meaning it is fully prepared for analysis.

## **Exploratory Data Analysis**

After cleaning the dataset, exploratory data analysis (EDA) is conducted to uncover trends, patterns, and insights regarding Netflix content. The analysis focuses on the distribution of content types, country-wise production trends, top directors, most popular genres, rating distributions, and release trends over time.

1. **Analyzing the Distribution of Content Types**

   The total count of movies and TV shows is calculated to understand which type of content dominates Netflix's library.

   ![image](https://github.com/user-attachments/assets/d8cf2f57-151b-45f7-a7df-54f74c33869b)

   ![image](https://github.com/user-attachments/assets/4a398b88-2e6d-496b-a031-aea57889df51)

   The results show that movies are more prevalent on Netflix than TV shows.

2. **Country-Wise Distribution of TV Shows**

   To determine which countries produce the most Netflix TV shows, the dataset is filtered for TV Show content, and the results are grouped by country.

   ![image](https://github.com/user-attachments/assets/af3e012f-28b6-499e-847d-d494e8098b59)

   ![image](https://github.com/user-attachments/assets/a9fc87e2-bb31-4a26-8649-ac63ef05347b)

   The data reveals that Pakistan produced the highest number of TV shows released between 2018-2021.

3. **Country-Wise Distribution of Movies**

   A similar analysis is conducted for movies to see which country dominates Netflix’s film catalog.

   ![image](https://github.com/user-attachments/assets/00100af1-9799-4d57-a409-32a5a480dcc4)

   ![image](https://github.com/user-attachments/assets/27745ce4-4a9b-43f8-b3f6-c9ff1804b290)

   The United States is the leading producer of Netflix movies released between 2018-2021.

4. **Top Netflix Directors**

   The most prolific directors on Netflix are identified by counting the number of shows and movies they have directed.

   ![image](https://github.com/user-attachments/assets/6778d944-319c-4be4-991c-79ae52655a69)

   ![image](https://github.com/user-attachments/assets/0a67eb18-4719-45bf-9372-cdd01eb71ebe)

   Suhas Kadav, Krysia Plonka, Kristian Mercado, Mark Thornton, Todd Kauffman, and Toshiya Shinohara are the director with the most Netflix shows released between 2018-2021.

5. **Most Popular Netflix Genres**

   The most frequently released genres on Netflix are determined by grouping and counting entries under the listed_in column.

   ![image](https://github.com/user-attachments/assets/d16d070f-9f32-4fec-bb53-dc10f5dfc614)

   ![image](https://github.com/user-attachments/assets/9252824d-fafb-4f04-9041-901d4304d86a)

   Kid’s TV, Action & Adventure, Anime Features, International Movies are the most popular genre on Netflix.

6. **Distribution of Content by Rating**

   To understand audience targeting, the most common Netflix ratings are analyzed.

   ![image](https://github.com/user-attachments/assets/d5084c69-5b0d-4a36-895e-5d4c80c23a26)

   ![image](https://github.com/user-attachments/assets/88c4aab6-6fec-4246-81a6-83f937534686)

   The most frequently assigned rating is TV-MA (Mature Audience), suggesting a significant portion of Netflix’s content is designed for adults.

7. **Yearly Trend of Netflix Releases**

   The number of movies and TV shows released per year is analyzed to observe content production trends over time.

   ![image](https://github.com/user-attachments/assets/4125d13a-46bf-471c-9ef9-8ee713593f15)

   ![image](https://github.com/user-attachments/assets/33ba7d45-18e5-4179-a466-edb0853b1475)

   This query highlights the volume of content added to Netflix each year, helping to understand whether production has increased or decreased over time.

8. **Oldest TV Shows and Movies on Netflix**

   To identify the oldest TV shows and movies available on Netflix, the dataset is sorted by release year, and the top five oldest titles in each category are selected.

   ![image](https://github.com/user-attachments/assets/37ac28ea-a576-4b9f-a99d-1796004dfe97)

   ![image](https://github.com/user-attachments/assets/1af4f818-e187-4bc6-a683-d720e3f4696b)

   This analysis reveals some of the earliest content available on Netflix, showing how far back Netflix’s catalog extends.

This EDA provides valuable insights into Netflix’s content strategy, showing dominant content types, production trends by country, the most prolific directors, the most popular genres and ratings, as well as content release patterns over time. These findings can help further investigations into Netflix’s content preferences, audience targeting, and potential gaps in content offerings.

## **Conclusion**

This project successfully demonstrates the power of MySQL in handling data cleaning and exploratory data analysis (EDA) using the Netflix Dataset. Through structured data cleaning processes, we ensured that the dataset was free from duplicates, inconsistencies, and missing values. Important transformations, such as converting the date_added column to a proper DATE format, helped optimize the dataset for analysis. By maintaining a backup table, we also ensured data integrity, allowing for a safe and structured approach to modifying the dataset.

The exploratory data analysis (EDA) provided valuable insights into Netflix’s content distribution. We discovered that movies dominate Netflix’s content library, while Pakistan leads in TV Show production and the United States dominates in movie releases. In terms of genre, Kid’s TV emerged as the most popular, highlighting Netflix’s strong focus on children’s content. The analysis also revealed that the most common content rating is TV-MA, indicating a significant portion of Netflix’s content is targeted at mature audiences.

Furthermore, the yearly trend analysis showed Netflix’s content additions over time, helping to identify growth patterns. The project also highlighted the most prolific directors, with Suhas Kadav standing out as the most active Netflix director from 2018-2021. Finally, by identifying the oldest TV shows and movies on Netflix, we gained insights into the platform’s historical content availability.

Overall, this project demonstrates how SQL can be used effectively for data preprocessing, transformation, and analysis. By applying structured SQL queries, we uncovered meaningful patterns in Netflix’s dataset without relying on external visualization tools. This approach is useful for professionals seeking to leverage SQL for data-driven decision-making in streaming content analysis and beyond.






















