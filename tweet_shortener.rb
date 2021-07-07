require 'pry'

def dictionary
	words = {
		"hello" => "hi",
		"to" => "2",
		"two" => "2",
		"too" => "2",
		"be" => "b",
		"you" => "u",
		"at" => "@",
		"and" => "&",
		"for" => "4"
	}
end

def word_substituter(tweet)
	words_array = tweet.split(" ")
	dict = dictionary
	dict.collect do |dic_key,dic_value|
		words_array.collect do |tweet_word|
			if tweet_word.downcase == dic_key
				tweet_word.replace(dic_value)
			end
		end
	end
	words_array.join(" ")
end

def bulk_tweet_shortener(tweet_array)

	tweet_array.collect do |a_tweet|
		puts word_substituter(a_tweet)
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
		"#{tweet[0..136]}..."
	else 
		tweet
	end
end









