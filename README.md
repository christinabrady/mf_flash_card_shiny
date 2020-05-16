I created this Shiny app to help me use [Chris Albon's Machine Learning Flashcards](https://machinelearningflashcards.com/).

My stats are stored on a PostgreSQL database that I maintain on a personal server. I've stored the credentials to connect to that database in a file titled 'dbconnect.txt' that is not including in this repo.

The stats could easily be stored in a csv file in the same directory as the app.

#### Enhancements   
* Get the 'Next button working'  
* When I have enough data, create an analytics and weight the sampling to return cards that I continue to get incorrect
