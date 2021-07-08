def dictionary 
{
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "For" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
}
end

def word_substituter(string_tweet)

new_tweet = []
array_dictionary = dictionary.keys.to_a
array_tweet = string_tweet.split(" ")
array_tweet.each do |word|
array_dictionary.include?(word) ? new_tweet << dictionary[word] : new_tweet << word
end
new_tweet.join(" ")
end

def bulk_tweet_shortener(array_of_tweets)
array_of_tweets.each do |tweet|
puts word_substituter(tweet)

end
end

  # array_of_tweets = ["hello its me you hello its me you hello its me you hello its me you hello its me you hello its me you hello its me you hello its me you hello its me you hello its me you hello its me you hello its me you ", "don't stop you now", " its at the tweet_three"]

  # Write a new method, selective_tweet_shortener, that only does the substitutions if the tweet is longer than 140 characters. If the tweet is 140 characters or shorter, just return the original tweet.

def selective_tweet_shortener(tweet)
if tweet.length > 140
word_substituter(tweet)
else tweet
end
end

def shortened_tweet_truncator(tweet)
tweet.length > 140 ? "#{tweet[0...137]}..." : tweet
end