#Data Frames

iris           #Built-in data frame in R

head(iris)      #First few obeservations - top part of dataframe
tail(iris)      #Last few observations - bottom part of dataframe

str(iris)      

?iris

#Creating a data frame

Player_name <- c("Rohit","Kohli","dhoni")
Total_runs <- c(5000,7200,8900)
Strike_rate <- c("84.22","89.12","87")

team1 <- data.frame(Player_name,Total_runs,Strike_rate)
team1

str(team1)


#stringsAsFactors
#stringsAsFactors is set by default as TRUE

team_char <- data.frame(Player_name,Total_runs,Strike_rate, stringsAsFactors = FALSE)
str(team_char)


#Accessing different elements from Data frame 

team1


team1[2,1]                    #Accessing one element
team1["2","Player_name"]     


team1[2, ]                    #Accessing second row  


team1[ ,2]                    #Accessing first column 
team1$Total_runs              #This can also used. More popular


team1[2:3, 1:2]        #Accessing selective rows & columns

team1[1:3,"Total_runs"]



#Data Frame Operations

Player_name <- c("Jadeja","Ashwin","Raina")
Total_runs <- c(1200,1500,5000)
Strike_rate <- c("34","45","80")

team2 <- data.frame(Player_name,Total_runs,Strike_rate)

Complete_team <- rbind(team1,team2)     #Combining two data frames
Complete_team

Player_age <- c(26,25,37)
hit_six <- c(230,123,133)
team3 <- data.frame(Player_age,hit_six)       #Making new data frame
team1_info <<- cbind(team1,team3)             #Cbind another data frame
team1_info

#Alternative
team1_info <<- cbind(team1,Player_age,hit_six) #Cbind two vectors directly


#Applying functions on data frame

nrow(team1_info)                        #Returns number of rows
ncol(team1_info)                        #Returns number of columns

summary(team1_info)                     #Summary analysis of data



#Installing data from files

#Reading data from .txt file
team_from_text_file<- read.table("myfile.txt")     
team_from_text_file<
  
  #Reading data from .csv file
  team_from_csv <- read.csv("myfile.csv")        
team_from_csv



