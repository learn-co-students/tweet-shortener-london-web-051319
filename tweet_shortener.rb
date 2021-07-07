# Write your code here.
def dictionary
dictionary = {
  "too" => "2",
  "to" => "2",
  "two" =>"2",
  "four" => "4",
  "for" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
}
end

def word_substituter(string) 
  string.split.collect do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else 
      word 
    end 
  end.join(" ")
end 

def bulk_tweet_shortener(tweet_array)
  tweet_array.collect do |tweet|
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
  shortened = word_substituter(tweet)
  if shortened.length > 140
    shortened[0..136].concat("...")
  else 
    shortened
  end
end