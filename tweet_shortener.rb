# Write your code here.
def dictionary
  {
    'hello' => 'hi',
    'to'    => '2',
    'two'   => '2',
    'too'   => '2',
    'for'   => '4',
    'For'   => '4',
    'four'  => '4',
    'be'    => 'b',
    'at'    => '@',
    'and'   => '&',
    'you'   => 'u'
  }
end

def word_substituter(str)
  dctny = dictionary
  long_words = dictionary.keys
  tweet_arr = str.split(" ")
  short_tweet = []
  tweet_arr.each do |word|
    if long_words.include?(word)
      short_tweet << dctny[word]
    else
      short_tweet << word
    end
  end
  short_tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each { |post| puts word_substituter(post) }
end

def selective_tweet_shortener(post)
  if post.length > 140
    word_substituter(post)
  else
    post
  end
end
# iterate through the tweet and see if it

def shortened_tweet_truncator(post)
  short_tweet = word_substituter(post)
  if short_tweet.length > 140
    short_tweet[0..136] + "..."
  else
    post
  end
end
