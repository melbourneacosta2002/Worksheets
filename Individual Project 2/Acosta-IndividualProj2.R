library(wordcloud)
library(plotly)
library(tm)
library(dplyr)
library(RColorBrewer)
library(ggplot2)
library(twitteR)

# SETUP CREDENTIALS.
CONSUMER_KEY <- "CrXArDLAgmPuQOxVurcBrk3Ez"
CONSUMER_SECRET <- "EQoqQclSB6qwJMcqYrYC80yWBFrT85t1UBEcgP3L4Gge4xeOOP"
ACCESS_TOKEN <-  "1597217544519045120-oZ7NYrQDw5QW4CjCHiO4v9qx9Td2QD"
ACCESS_SECRET <-  "kNlFVVkanyJWXzZfNQmohCZSWlnfGAfVLhzySNEZur2cR"

setup_twitter_oauth(consumer_key = CONSUMER_KEY,
                    consumer_secret = CONSUMER_SECRET,
                    access_token = ACCESS_TOKEN,
                    access_secret = ACCESS_SECRET)


# EXTRACTING TWEETS.
leaguetweets <- searchTwitter("#LeagueOfLegends", n=10000, lang="en", since="2022-12-15", until="2022-12-22", retryOnRateLimit = 120)
leaguetweets

# CONVERTING LIST DATA TO DATA FRAME.
leaguetweetsDF <- twListToDF(leaguetweets)

# SAVE DATA FRAME FILE.
save(leaguetweetsDF,file = "leagueTweetsDF.Rdata")

# LOAD DATA FRAME FILE.
load(file = "leagueTweetsDF.Rdata")

# CHECKING FOR MISSING VALUES IN A DATA FRAME.
sap_data <- sapply(leaguetweetsDF, function(x) sum(is.na(x)))
sap_data

#Tweets
# SUBSETTING USING THE dplyr() PACKAGE.
tweets <- leaguetweetsDF %>%
  select(screenName,text,created, isRetweet) %>% filter(isRetweet == FALSE)
tweets

# GROUPING THE DATA CREATED. 
tweets %>%  
  group_by(1) %>%  
  summarise(max = max(created), min = min(created))

crt_data <- tweets %>%  mutate(Created_At_Round = created %>% round(units = 'hours') %>% as.POSIXct())
crt_data

mn <- tweets %>% pull(created) %>% min()
mn 
mx <- tweets %>% pull(created) %>% max()
mx

# Plot on tweets by time using the library(plotly) and ggplot().
plt_data <- ggplot(crt_data, aes(x = Created_At_Round)) +
  geom_histogram(aes(fill = ..count..)) +
  theme(legend.position = "right") +
  xlab("Time") + ylab("Number of tweets") + 
  scale_fill_gradient(low = "midnightblue", high = "aquamarine4")

plt_data %>% ggplotly()

#==============
#Retweets

sub_tweets <- leaguetweetsDF %>%
  select(screenName,text,created, isRetweet) %>% filter(isRetweet == TRUE)
sub_tweets


sub_tweets %>%  
  group_by(1) %>%  
  summarise(max = max(created), min = min(created))

crt2 <- sub_tweets %>%  mutate(Created_At_Round = created %>% round(units = 'hours') %>% as.POSIXct())
crt2

mn <- sub_tweets %>% pull(created) %>% min()
mn 
mx <- sub_tweets %>% pull(created) %>% max()
mx

# Plot on tweets by time using the library(plotly) and ggplot().
plt_data <- ggplot(crt2, aes(x = Created_At_Round)) +
  geom_histogram(aes(fill = ..count..)) +
  theme(legend.position = "right") +
  xlab("Time") + ylab("Number of tweets") + 
  scale_fill_gradient(low = "midnightblue", high = "aquamarine4")

plt_data %>% ggplotly()
