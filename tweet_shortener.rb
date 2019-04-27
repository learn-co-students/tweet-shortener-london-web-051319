require "pry"
# Write your code here.

dictionary = {
  "hello" => "hi",
  "Hello" => "hi",
  "to" => "2",
  "To" => "2",
  "too" => "2",
  "Too" => "2",
  "two" => "2",
  "Two" => "2",
  "for" => "4",
  "For" => "4",
  "four" => "4",
  "Four" => "4",
  "be" => "b",
  "Be" => "b",
  "you" => "u",
  "You" => "u",
  "at" => "@",
  "At" => "@",
  "and" => "&",
  "And" => "&"
}

def word_substituter(tweet)
  dictionary = {
    "hello" => "hi",
    "Hello" => "hi",
    "to" => "2",
    "To" => "2",
    "too" => "2",
    "Too" => "2",
    "two" => "2",
    "Two" => "2",
    "for" => "4",
    "For" => "4",
    "four" => "4",
    "Four" => "4",
    "be" => "b",
    "Be" => "b",
    "you" => "u",
    "You" => "u",
    "at" => "@",
    "At" => "@",
    "and" => "&",
    "And" => "&"
}
  tweet.split(" ").collect do |x|
    if dictionary.keys.include?(x) 
        dictionary[x]
      else
        x 
      end
    end.join(" ")
  end

def bulk_tweet_shortener(tweets)
  tweets.each {|tweet| puts word_substituter(tweet)}
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  # elsif tweet.length < 130 # this is what the question specifies, but it makes no sense as there are 10 characters inbetween unaccounted for.
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  short_tweet = selective_tweet_shortener(tweet)
    if short_tweet.length > 140
      truncated = short_tweet[0..136]
      truncated << "..."
    else
      tweet
  end
end
