def dictionary
  convert = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end
def word_substituter(string)
  string.split(" ").map do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end.join(" ")
end
def bulk_tweet_shortener(strings)
  strings.map do |phrase|
    puts word_substituter(phrase)
  end
end
def selective_tweet_shortener(string)
  if string.length > 140
    word_substituter(string)
  elsif string.length <= 140
    string
  end
end
def shortened_tweet_truncator(string)
  if string.length > 140
    word_substituter(string)[0..136] + "..."
  else
    string
  end
end







