travel_data<-read.csv("Tourist_reviews.csv",header=TRUE)
travel_data

#inspect the dataset
names(travel_data)
head(travel_data)
tail(travel_data)
summary(travel_data)
str(travel_data)

#Install packages
install.packages("tm")
library(tm)
install.packages("wordcloud")
library(wordcloud)

#Subset the 30 establishment names
hotel_1<-subset(travel_data,Name=="Thong Dee The Kathu Brasserie")
hotel_2<-subset(travel_data,Name=="Odysseus Greek Organic Restaurant")
hotel_3<-subset(travel_data,Name=="Green Tamarind Kitchen")
hotel_4<-subset(travel_data,Name=="Dee Plee - Anantara Layan Phuket Resort")
hotel_5<-subset(travel_data,Name=="The Tavern")
hotel_6<-subset(travel_data,Name=="EAT. bar & grill")
hotel_7<-subset(travel_data,Name=="Kataturk Turkish Restaurant")
hotel_8<-subset(travel_data,Name=="Sala Sawasdee Lobby Bar")
hotel_9<-subset(travel_data,Name=="Highway Curry Indian & Thai Cuisine")
hotel_10<-subset(travel_data,Name=="Tandoori Flames")
hotel_11<-subset(travel_data,Name=="Pad Thai Shop")
hotel_12<-subset(travel_data,Name=="Golden Paradise Restaurant")
hotel_13<-subset(travel_data,Name=="Mr.Coffee")
hotel_14<-subset(travel_data,Name=="Flavor Phuket")
hotel_15<-subset(travel_data,Name=="Baan Noy Restaurant")
hotel_16<-subset(travel_data,Name=="Ao Chalong Yacht Club Restaurant")
hotel_17<-subset(travel_data,Name=="Naughty Nuri's Phuket")
hotel_18<-subset(travel_data,Name=="Surin Chill House")
hotel_19<-subset(travel_data,Name=="Natural Efe Macrobiotic World")
hotel_20<-subset(travel_data,Name=="Honeymoon Thai Restaurant by Kenya")
hotel_21<-subset(travel_data,Name=="O-OH Farm Ta-Eiad")
hotel_22<-subset(travel_data,Name=="Da Puccio Restaurant")
hotel_23<-subset(travel_data,Name=="Sizzle Rooftop Restaurant")
hotel_24<-subset(travel_data,Name=="Climax on Bangla")
hotel_25<-subset(travel_data,Name=="Le Brooklyn Patong")
hotel_26<-subset(travel_data,Name=="La Dolce Vita Restaurant")
hotel_27<-subset(travel_data,Name=="Sabaijai Cafe")
hotel_28<-subset(travel_data,Name=="The Cove Phuket")
hotel_29<-subset(travel_data,Name=="i-Kroon Cafe")
hotel_30<-subset(travel_data,Name=="Ann's Kitchen Bar and Grill")

#To lowercase
review_1<-tolower(hotel_1)
review_2<-tolower(hotel_2)
review_3<-tolower(hotel_3)
review_4<-tolower(hotel_4)
review_5<-tolower(hotel_5)
review_6<-tolower(hotel_6)
review_7<-tolower(hotel_7)
review_8<-tolower(hotel_8)
review_9<-tolower(hotel_9)
review_10<-tolower(hotel_10)
review_11<-tolower(hotel_11)
review_12<-tolower(hotel_12)
review_13<-tolower(hotel_13)
review_14<-tolower(hotel_14)
review_15<-tolower(hotel_15)
review_16<-tolower(hotel_16)
review_17<-tolower(hotel_17)
review_18<-tolower(hotel_18)
review_19<-tolower(hotel_19)
review_20<-tolower(hotel_20)
review_21<-tolower(hotel_21)
review_22<-tolower(hotel_22)
review_23<-tolower(hotel_23)
review_24<-tolower(hotel_24)
review_25<-tolower(hotel_25)
review_26<-tolower(hotel_26)
review_27<-tolower(hotel_27)
review_28<-tolower(hotel_28)
review_29<-tolower(hotel_29)
review_30<-tolower(hotel_30)

#Remove punctuation 
review_1<- gsub("[[:punct:]]", "", review_1)
review_2<- gsub("[[:punct:]]", "", review_2)
review_3<- gsub("[[:punct:]]", "", review_3)
review_4<- gsub("[[:punct:]]", "", review_4)
review_5<- gsub("[[:punct:]]", "", review_5)
review_6<- gsub("[[:punct:]]", "", review_6)
review_7<- gsub("[[:punct:]]", "", review_7)
review_8<- gsub("[[:punct:]]", "", review_8)
review_9<- gsub("[[:punct:]]", "", review_9)
review_10<- gsub("[[:punct:]]", "", review_10)
review_11<- gsub("[[:punct:]]", "", review_11)
review_12<- gsub("[[:punct:]]", "", review_12)
review_13<- gsub("[[:punct:]]", "", review_13)
review_14<- gsub("[[:punct:]]", "", review_14)
review_15<- gsub("[[:punct:]]", "", review_15)
review_16<- gsub("[[:punct:]]", "", review_16)
review_17<- gsub("[[:punct:]]", "", review_17)
review_18<- gsub("[[:punct:]]", "", review_18)
review_19<- gsub("[[:punct:]]", "", review_19)
review_20<- gsub("[[:punct:]]", "", review_20)
review_21<- gsub("[[:punct:]]", "", review_21)
review_22<- gsub("[[:punct:]]", "", review_22)
review_23<- gsub("[[:punct:]]", "", review_23)
review_24<- gsub("[[:punct:]]", "", review_24)
review_25<- gsub("[[:punct:]]", "", review_25)
review_26<- gsub("[[:punct:]]", "", review_26)
review_27<- gsub("[[:punct:]]", "", review_27)
review_28<- gsub("[[:punct:]]", "", review_28)
review_29<- gsub("[[:punct:]]", "", review_29)
review_30<- gsub("[[:punct:]]", "", review_30)

#Remove links from the reviews
review_1<- gsub("http\\S+\\s*", "", review_1)
review_2<- gsub("http\\S+\\s*", "", review_2)
review_3<- gsub("http\\S+\\s*", "", review_3)
review_4<- gsub("http\\S+\\s*", "", review_4)
review_5<- gsub("http\\S+\\s*", "", review_5)
review_6<- gsub("http\\S+\\s*", "", review_6)
review_7<- gsub("http\\S+\\s*", "", review_7)
review_8<- gsub("http\\S+\\s*", "", review_8)
review_9<- gsub("http\\S+\\s*", "", review_9)
review_10<- gsub("http\\S+\\s*", "", review_10)
review_11<- gsub("http\\S+\\s*", "", review_11)
review_12<- gsub("http\\S+\\s*", "", review_12)
review_13<- gsub("http\\S+\\s*", "", review_13)
review_14<- gsub("http\\S+\\s*", "", review_14)
review_15<- gsub("http\\S+\\s*", "", review_15)
review_16<- gsub("http\\S+\\s*", "", review_16)
review_17<- gsub("http\\S+\\s*", "", review_17)
review_18<- gsub("http\\S+\\s*", "", review_18)
review_19<- gsub("http\\S+\\s*", "", review_19)
review_20<- gsub("http\\S+\\s*", "", review_20)
review_21<- gsub("http\\S+\\s*", "", review_21)
review_22<- gsub("http\\S+\\s*", "", review_22)
review_23<- gsub("http\\S+\\s*", "", review_23)
review_24<- gsub("http\\S+\\s*", "", review_24)
review_25<- gsub("http\\S+\\s*", "", review_25)
review_26<- gsub("http\\S+\\s*", "", review_26)
review_27<- gsub("http\\S+\\s*", "", review_27)
review_28<- gsub("http\\S+\\s*", "", review_28)
review_29<- gsub("http\\S+\\s*", "", review_29)
review_30<- gsub("http\\S+\\s*", "", review_30)

#Remove digits from the reviews
review_1<- gsub("[[:digit:]]", "", review_1)
review_2<- gsub("[[:digit:]]", "", review_2)
review_3<- gsub("[[:digit:]]", "", review_3)
review_4<- gsub("[[:digit:]]", "", review_4)
review_5<- gsub("[[:digit:]]", "", review_5)
review_6<- gsub("[[:digit:]]", "", review_6)
review_7<- gsub("[[:digit:]]", "", review_7)
review_8<- gsub("[[:digit:]]", "", review_8)
review_9<- gsub("[[:digit:]]", "", review_9)
review_10<- gsub("[[:digit:]]", "", review_10)
review_11<- gsub("[[:digit:]]", "", review_11)
review_12<- gsub("[[:digit:]]", "", review_12)
review_13<- gsub("[[:digit:]]", "", review_13)
review_14<- gsub("[[:digit:]]", "", review_14)
review_15<- gsub("[[:digit:]]", "", review_15)
review_16<- gsub("[[:digit:]]", "", review_16)
review_17<- gsub("[[:digit:]]", "", review_17)
review_18<- gsub("[[:digit:]]", "", review_18)
review_19<- gsub("[[:digit:]]", "", review_19)
review_21<- gsub("[[:digit:]]", "", review_21)
review_22<- gsub("[[:digit:]]", "", review_22)
review_23<- gsub("[[:digit:]]", "", review_23)
review_24<- gsub("[[:digit:]]", "", review_24)
review_25<- gsub("[[:digit:]]", "", review_25)
review_26<- gsub("[[:digit:]]", "", review_26)
review_27<- gsub("[[:digit:]]", "", review_27)
review_28<- gsub("[[:digit:]]", "", review_28)
review_29<- gsub("[[:digit:]]", "", review_9)
review_30<- gsub("[[:digit:]]", "", review_30)

#Remove blank spaces at the end from the reviews
review_1<-gsub(" $", "", review_1)
review_2<-gsub(" $", "", review_2)
review_3<-gsub(" $", "", review_3)
review_4<-gsub(" $", "", review_4)
review_5<-gsub(" $", "", review_5)
review_6<-gsub(" $", "", review_6)
review_7<-gsub(" $", "", review_7)
review_8<-gsub(" $", "", review_8)
review_9<-gsub(" $", "", review_9)
review_10<-gsub(" $", "", review_10)
review_11<-gsub(" $", "", review_11)
review_12<-gsub(" $", "", review_12)
review_13<-gsub(" $", "", review_13)
review_14<-gsub(" $", "", review_14)
review_15<-gsub(" $", "", review_15)
review_16<-gsub(" $", "", review_16)
review_17<-gsub(" $", "", review_17)
review_18<-gsub(" $", "", review_18)
review_19<-gsub(" $", "", review_19)
review_20<-gsub(" $", "", review_20)
review_21<-gsub(" $", "", review_21)
review_22<-gsub(" $", "", review_22)
review_23<-gsub(" $", "", review_23)
review_24<-gsub(" $", "", review_24)
review_25<-gsub(" $", "", review_25)
review_26<-gsub(" $", "", review_26)
review_27<-gsub(" $", "", review_27)
review_28<-gsub(" $", "", review_28)
review_29<-gsub(" $", "", review_29)
review_30<-gsub(" $", "", review_30)

#Remove blank spaces at the beginning from the reviews
review_1<-gsub("^ ", "", review_1)
review_2<-gsub("^ ", "", review_2)
review_3<-gsub("^ ", "", review_3)
review_4<-gsub("^ ", "", review_4)
review_5<-gsub("^ ", "", review_5)
review_6<-gsub("^ ", "", review_6)
review_7<-gsub("^ ", "", review_7)
review_8<-gsub("^ ", "", review_8)
review_9<-gsub("^ ", "", review_9)
review_10<-gsub("^ ", "", review_10)
review_11<-gsub("^ ", "", review_11)
review_12<-gsub("^ ", "", review_12)
review_13<-gsub("^ ", "", review_13)
review_14<-gsub("^ ", "", review_14)
review_15<-gsub("^ ", "", review_15)
review_16<-gsub("^ ", "", review_16)
review_17<-gsub("^ ", "", review_17)
review_18<-gsub("^ ", "", review_18)
review_19<-gsub("^ ", "", review_19)
review_20<-gsub("^ ", "", review_20)
review_21<-gsub("^ ", "", review_21)
review_22<-gsub("^ ", "", review_22)
review_23<-gsub("^ ", "", review_23)
review_24<-gsub("^ ", "", review_24)
review_25<-gsub("^ ", "", review_25)
review_26<-gsub("^ ", "", review_26)
review_27<-gsub("^ ", "", review_27)
review_28<-gsub("^ ", "", review_28)
review_29<-gsub("^ ", "", review_29)
review_30<-gsub("^ ", "", review_30)

#Remove word "restaurant" from the review
review_1<-gsub("restaurant", "", review_1)
review_2<-gsub("restaurant", "", review_2)
review_3<-gsub("restaurant", "", review_3)
review_4<-gsub("restaurant", "", review_4)
review_5<-gsub("restaurant", "", review_5)
review_6<-gsub("restaurant", "", review_6)
review_7<-gsub("restaurant", "", review_7)
review_8<-gsub("restaurant", "", review_8)
review_9<-gsub("restaurant", "", review_9)
review_10<-gsub("restaurant", "", review_10)
review_11<-gsub("restaurant", "", review_11)
review_12<-gsub("restaurant", "", review_12)
review_13<-gsub("restaurant", "", review_13)
review_14<-gsub("restaurant", "", review_14)
review_15<-gsub("restaurant", "", review_15)
review_16<-gsub("restaurant", "", review_16)
review_17<-gsub("restaurant", "", review_17)
review_18<-gsub("restaurant", "", review_18)
review_19<-gsub("restaurant", "", review_19)
review_20<-gsub("restaurant", "", review_20)
review_21<-gsub("restaurant", "", review_21)
review_22<-gsub("restaurant", "", review_22)
review_23<-gsub("restaurant", "", review_23)
review_24<-gsub("restaurant", "", review_24)
review_25<-gsub("restaurant", "", review_25)
review_26<-gsub("restaurant", "", review_26)
review_27<-gsub("restaurant", "", review_27)
review_28<-gsub("restaurant", "", review_28)
review_29<-gsub("restaurant", "", review_29)
review_30<-gsub("restaurant", "", review_30)

#Inspect randomly the review vector after cleaning 
head(review_1)
head(review_15)
head(review_28)
install.packages("SnowballC")
library(SnowballC)
#Sentiment function
sentiment_function <- function(stem_corpus)
{
  #generate wordclouds
  wordcloud(stem_corpus,
            min.freq = 3,
            colors=brewer.pal(8, "Dark2"),
            random.color = TRUE,
            max.words = 100)
  
  #Calculating the count of total positive and negative words in each review
  
  
  positive_lexicon <- read.csv("positive-lexicon.txt")
  negative_lexicon <- read.csv("negative-lexicon.txt")
  
  #Create variables and vectors
  total_pos_count <- 0
  total_neg_count <- 0
  pos_count_vector <- c()
  neg_count_vector <- c()
  #Calculate the size of the corpus
  size <- length(stem_corpus)
  
  for(i in 1:size)
  {
    #All the words in current review
    corpus_words<- list(strsplit(stem_corpus[[i]]$content, split = " "))
    
    #positive words in current review
    pos_count <-length(intersect(unlist(corpus_words), unlist(positive_lexicon)))
    
    #negative words in current review
    neg_count <- length(intersect(unlist(corpus_words), unlist(negative_lexicon)))
    
    total_pos_count <- total_pos_count + pos_count ## overall positive count
    total_neg_count <- total_neg_count + neg_count ## overall negative count
    
  }
  #Calculating overall percentage of positive and negative words of all the reviews
  total_pos_count ## overall positive count
  total_neg_count ## overall negative count
  total_count <- total_pos_count + total_neg_count
  overall_positive_percentage <- (total_pos_count*100)/total_count
  overall_negative_percentage <- (total_neg_count*100)/total_count
  overall_positive_percentage ## overall positive percentage
  #Create a dataframe with all the positive and negative reviews
  df<-data.frame(Review_Type=c("Postive","Negitive"),
                 Count=c(total_pos_count ,total_neg_count ))
  print(df) #Print
  overall_positive_percentage<-paste("Percentage of Positive Reviews:",
                                     round(overall_positive_percentage,2),"%")
  print(overall_positive_percentage)
}


#Run corpus function
Fun_copus<- function(x){
  require(tm)
  require(wordcloud)
  
  # step 1: Converting the text vectors to corpus
  z1 = Corpus(VectorSource(x)) 
  # step 2: 
  z2 = tm_map(z1, removeWords, stopwords("english"))
  z3 = tm_map(z2, stripWhitespace)
  z4 = tm_map(z3, stemDocument)
  res = sentiment_function(z4)
  return(res)
}

#Converting text vectors to corpus
sentiment_1<-Fun_copus(VectorSource(review_1))
sentiment_2<-Fun_copus(VectorSource(review_2))
sentiment_3<-Fun_copus(VectorSource(review_3))
sentiment_4<-Fun_copus(VectorSource(review_4))
sentiment_5<-Fun_copus(VectorSource(review_5))
sentiment_6<-Fun_copus(VectorSource(review_6))
sentiment_7<-Fun_copus(VectorSource(review_7))
sentiment_8<-Fun_copus(VectorSource(review_8))
sentiment_9<-Fun_copus(VectorSource(review_9))
sentiment_10<-Fun_copus(VectorSource(review_10))
sentiment_11<-Fun_copus(VectorSource(review_11))
sentiment_12<-Fun_copus(VectorSource(review_12))
sentiment_13<-Fun_copus(VectorSource(review_13))
sentiment_14<-Fun_copus(VectorSource(review_14))
sentiment_15<-Fun_copus(VectorSource(review_15))
sentiment_16<-Fun_copus(VectorSource(review_16))
sentiment_17<-Fun_copus(VectorSource(review_17))
sentiment_18<-Fun_copus(VectorSource(review_18))
sentiment_19<-Fun_copus(VectorSource(review_19))
sentiment_20<-Fun_copus(VectorSource(review_20))
sentiment_21<-Fun_copus(VectorSource(review_21))
sentiment_22<-Fun_copus(VectorSource(review_22))
sentiment_23<-Fun_copus(VectorSource(review_23))
sentiment_24<-Fun_copus(VectorSource(review_24))
sentiment_25<-Fun_copus(VectorSource(review_25))
sentiment_26<-Fun_copus(VectorSource(review_26))
sentiment_27<-Fun_copus(VectorSource(review_27))
sentiment_28<-Fun_copus(VectorSource(review_28))
sentiment_29<-Fun_copus(VectorSource(review_29))
sentiment_30<-Fun_copus(VectorSource(review_30))










