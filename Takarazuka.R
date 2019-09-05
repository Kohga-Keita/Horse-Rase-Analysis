library(tidyverse)
library(rtweet)

appname <- "#####" # name of application
key <- ""#####"" # your api application key
secret <- ""#####"" # api secret
at <- ""#####"" #access token
as <- ""#####"" # access secret

twitter_token <- rtweet::create_token(
  app = appname,
  consumer_key = key,
  consumer_secret = secret,
  access_token = at, 
  access_secret = as)

horse_names = c("キセキ", "レイデオロ", "エタリオウ", "アルアイン", "タツゴウゲキ", "スティッフェリオ", "マカヒキ", "ショウナンバッハ", "クリンチャー", "ノーブルマーズ", "スワーヴリチャード", "リスグラシュー")
horse_tweets = list()
horse_time = list()

for (i in 1:12){
  horse_name = horse_names[[i]]
  horse_tweets[[i]] <- search_tweets(q = as.character(horse_name), n = 50000, retryonratelimit = TRUE) 
  horse[[i]] <- table(str_sub(as.character(horse_tweets[[i]]$created_at), 7, 13))
  write.csv(horse[[i]], file = "horse[[i]].csv")
}
