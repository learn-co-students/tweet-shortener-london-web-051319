require 'pry'

# Write your code here.
def dictionary
  dictionary = {
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
  tweet_as_array = tweet.split(" ")
  i = 0
  while (i < tweet_as_array.size)
    word = tweet_as_array[i].downcase
  
    if dictionary.keys.include?(word) == true
      replaced_word = dictionary.values_at(word)
      tweet_as_array[i] = replaced_word
    end
    i+= 1
    # binding.pry
    
  end
  tweet_as_array.join(" ")
end 

def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each do |tweet| 
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else 
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    "#{tweet[0..134]}(...)"
  else
    tweet
  end
end


# word_substituter("Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!")