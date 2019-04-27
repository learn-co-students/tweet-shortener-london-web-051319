# Write your code here.'
def dictionary
  {
    hello: "hi",
    to: "2",
    two: "2",
    too: "2",
    for: "4",
    four: "4",
    be: "b",
    you: "u",
    at: "@",
    and: "&"
  }
end

def word_substituter(tweet)
  tweet.split(" ").map {|x| dictionary.keys.include?(x.downcase.to_sym) ? dictionary[x.downcase.to_sym] : x}.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each {|tweet| puts word_substituter(tweet)}
end

def selective_tweet_shortener(tweet)
  tweet.size > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  tweet = selective_tweet_shortener(tweet)
  tweet.size > 140 ? tweet[0...140] : tweet
end
