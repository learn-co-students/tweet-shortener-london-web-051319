require "pry"
# Write your code here.

# Could do it this way, but it makes the code much harder
# dictionary = {
#   "hi" => "hello",
#   "2" => ["to", "two", "too"],
#   "4" => ["for", "four"],
#   "b" => "be",
#   "u" => "you",
#   "@" => "at",
#   "&" => "and"
# }

dictionary = {
  "hello" => "hi",
  "to" => "2",
  "too" => "2",
  "two" => "2",
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
}

def word_substituter(tweet)
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "too" => "2",
    "two" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
  tweet.split.collect do |x| # this splits the string into an array of single words and the collect function collect the result from the block as output
    if dictionary.keys.include?(x) # x is the word from the tweet we've turned into an array 
        dictionary[x] # if the current word matches a key in the hash, then the output will be the value that corresponds to the key == x
      else
        x # if there are no keys == x then x is returned from the original array
      end
      # return dictionary.key(value) if value == x 
    end.join(" ") # you can avoid creating an array and change the output by putting the command on the end of the end statement. 
end

def bulk_tweet_shortener(tweet)
  puts word_substituter(tweet)
end
