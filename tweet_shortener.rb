require 'pry'

def dictionary 
  dictionary_hash = {
     ["hello"] => "hi",
     ["to","two","too"] => "2",
     ["for","four"] => "4",
     ["be"] => "b",
     ["you"] => "u",
     ["at"] => "@",
     ["and"] => "&"
  }
end

def word_substituter(tweet_string)
  dictionary_hash = {
     ["hello"] => "hi",
     ["to","two","too"] => "2",
     ["for","four"] => "4",
     ["be"] => "b",
     ["you"] => "u",
     ["at"] => "@",
     ["and"] => "&"
  }
  new_tweet = []
  new_word = ""
  tweet_array = tweet_string.split(" ")
  tweet_array.collect do |i|
    new_word = i
    dictionary_hash.each do |a,b|
      if a.include? i.downcase
        new_word = b 
      end
    end
    new_tweet << new_word
  end
  new_tweet.join(" ")
end 

def bulk_tweet_shortener(all_tweets)
  all_tweets.each do |i|
    puts word_substituter(i)
  end
end

def selective_tweet_shortener(tweet)
  tweet_size = tweet.size 
  new_tweet = ""
  if tweet_size > 140
    new_tweet = word_substituter(tweet)
  elsif tweet_size < 140
    new_tweet = tweet
  end
  new_tweet
end

def shortened_tweet_truncator(tweet)
  tweet_size = tweet.length 
  new_tweet = ""
  if tweet_size > 140
    shortened_tweet = word_substituter(tweet)
    new_length = shortened_tweet.length
    if new_length > 140
      new_tweet = "#{shortened_tweet[0..133]} (...)"
    else
      new_tweet = shortened_tweet
    end
  elsif tweet_size < 140
    new_tweet = tweet
  end
  new_tweet
end