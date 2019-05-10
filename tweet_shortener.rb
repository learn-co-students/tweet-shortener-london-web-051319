# Write your code here.
require 'pry'

def dictionary
  sub = {
    "hello" => 'hi',
    "to"=> "2",
    "too"=> "2",
    "two" => "2",
    "for"=>"4",
    "four" => "4", 
    "For"=>"4",
    "Four" => "4",
    'be' => "b",
    'you'=> "u",
    "at" =>"@",
    "and" => "&",
    }
end

def word_substituter(tweet)
  words = tweet.split(' ')
  words.collect do |word| 
    dictionary.collect do |key, value|
      #binding.pry
      if word == key 
        word.replace(value)
      #binding.pry
    end
  end
end
words.join(" ")
end

def bulk_tweet_shortener(array)
  array.collect do |words|
    puts word_substituter(words)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.chars.length > 140
    return word_substituter(tweet)
  else 
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  max = 139
  if tweet.chars.length >= max 
    return "#{tweet[0..max]}"
  else
    return tweet
  end
end