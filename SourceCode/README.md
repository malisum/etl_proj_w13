# <font color='blue'>Overview - Add code below</font>
## <font color='red'>About NFL - Add code below</font>
### The National Football League
America's most popular sports league, comprised of 32 franchises that compete each year to win the Super Bowl, the world's biggest annual sporting event. Founded in 1920, the NFL developed the model for the successful modern sports league, including national and international distribution, extensive revenue sharing, competitive excellence, and strong franchises across the country.
### Since 1960, Super Bowl is held as an annual championship game of the National Football League (NFL) played between mid-January and early February. It is the culmination of a regular season that begins in the late summer of the previous year
### In this project, we used ETL (Extract, Transform, Load) database functions to observe Superbowl history from 1967 to 2020. We tried to determine the trend for the annual MVP of the game by analysing  the MVP's physical attributes such as average weight, height and age. We also look if
# Data Source: Kaggle
## <font color='red'>EXTRACT - Add code below</font>
### Read the data from multiple source
### 1. CSV from Kaggle
### 2. coordinates from
### Extract coordinates from Google API
## Using base url: https://maps.googleapis.com/maps/api/place/nearbysearch/json/data/2.5/history/city?q={city ID},{country code}&type=hour&start={start}&end={end}
## Clean Up Process  involved:
### 1. Removing duplicates
### 2. Removing NaN's
### 3. Dropping columns
### 4. Re assign ID
### 5. Assign numeric
### 6. Sorted data frame based on date to assign a numeric ID
### 7. Function to convert to a roman numeral number
### 8. Rename columns to match database and prepare for join
## <font color='red'>TRANSFORM</font>
### 1. Converting weight into float, height into integer from players DB.
### 2. After both tables were merged we discovered there was still duplicate players that matched the same name as the mvp winner.
### 3. Sorted data frame based on date to assign a numeric ID
### 4. Function to convert to a roman numeral number
### 5. After both databases were joined we had to calculate the mvp's player age at the time of the Superbowl win.
### 6. Create a player max value function that would filter out players with the same name as mvp that were born prior to the super bowl date. Also within that function we will assign a different unique ID to these selected players. This allowed us to match the superbowl mvp player data with the most accuracy given the information we have.
##  <font color='red'>LOAD</font>
### 1. A heatmap was created to visualize all of the places where a Superbowl event was hosted from 1967-2020 using a google places API.
### 2. We selected this to show different facts from Superbowl venue statistics.
### 3. We determined that a majority of Superbowls took place in warm sunny locations and conditions.
### database name: nfl_db



