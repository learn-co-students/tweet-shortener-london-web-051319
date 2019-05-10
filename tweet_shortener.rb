def dictionary
   {
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

def word_substituter(tweet)
  tweet.split.collect {|word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word = word
    end
  }.join(" ")
end

def bulk_tweet_shortener(array)
  array.each {|tweet|
  puts word_substituter(tweet)
  }
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  new_tweet = selective_tweet_shortener(tweet)
    if new_tweet.length > 140
      new_tweet[0..136] << "..."
    else
      new_tweet
    end
end
