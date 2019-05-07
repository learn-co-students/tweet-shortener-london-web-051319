# Write your code here.
require "pry"

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

def word_substituter(tweet)
  tweet.split(" ").map do |word|
        if dictionary.keys.include?(word.downcase)
          word = dictionary[word.downcase]
        else
          word
      end
    end.join(" ")
  end

  def bulk_tweet_shortener(tweet)
    tweet.map do |phrase|
      puts word_substituter(phrase)
    end
  end

  def selective_tweet_shortener(str_tweets)
    str_tweets > 140 ? word_substituter(str_tweets) : str_tweets
  end

  def shortened_tweet_truncator(str_tweets)
    str_tweets = str_tweets[0..139] + '...' if str_tweets > 140
    str_tweets
  end
