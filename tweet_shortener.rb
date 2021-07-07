# Write your code here.

def dictionary
  dictionary_hash={
    "hello" => "hi",
    "to"    => "2", 
    "two"   => "2", 
    "too"   => "2", 
    "for"   => "4", 
    "four"  => "4",
    "be"    => "b",
    "you"   => "u",
    "at"    => "@",
    "and"   => "&"
  }
end

def word_substituter(string)
  
  string_array= string.split
  
  dictionary.each do |key, value|
    string_array.each_with_index do |word,index|
      word = word.downcase
      if word == key
        string_array[index] = value
      end
    end
  end
  
  string_array.join(" ")
  
end

def bulk_tweet_shortener(array)
  array.collect do |tweets|
    string_array= tweets.split
    dictionary.each do |key, value|
      string_array.each_with_index do |word,index|
        word = word.downcase
        if word == key
          string_array[index] = value
        end
      end
    end
    puts string_array.join(" ")
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140 
      string_array= tweet.split
  
  dictionary.each do |key, value|
    string_array.each_with_index do |word,index|
      word = word.downcase
      if word == key
        string_array[index] = value
      end
    end
  end
  
  string_array.join(" ")
else
  return tweet
  end
end

def shortened_tweet_truncator(string)
  if string.length > 140 
    string_array= string.split
    dictionary.each do |key, value|
      string_array.each_with_index do |word,index|
        word = word.downcase
        if word == key
          string_array[index] = value
        end
      end
    end
    string_array.join(" ")[0..136]+"..."
    
  else
  return string
  end
end
