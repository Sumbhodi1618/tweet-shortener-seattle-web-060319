require 'pry'
def dictionary
  dictionary = {
"hello"=>'hi',
"to"=>'2',
"two"=>'2',
"too"=>'2',
"for"=>'4',
"For"=>'4',
"four"=>'4',
"be"=>'b',
"you"=>'u',
"at"=>'@',
"and"=>'&' }
end

def word_substituter(tweet_one)
  array = []
  tweet_one.split.map do |word|
    if dictionary[word]
      array << dictionary[word]
    else
      array << word
    end
  end
  array.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet_one_length)
    if tweet_one_length > 140
       puts tweet_one_short
    else
      tweets
    end
  end
