# Write your code here.
  $dictionary = {
    "hello" => 'hi',
    "to" => '2', 
    "too" => '2',
    "two" => '2',
    "for" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
  }

def word_substituter(tweet)
  sepTweet = tweet.split(" ")
  range = 0..sepTweet.length-1
  for word in range
    $dictionary.collect do |long, short|
      if sepTweet[word].upcase == long.upcase
        sepTweet[word] = short
      end
    end
  end
  newTweet = ""
  for i in range
    newTweet = newTweet + " " + sepTweet[i]
  end
  newTweet[0] = ''
  newTweet
end


def bulk_tweet_shortener(tweets)
  range = 0..tweets.length-1
  newTweets = []
  for i in range
    newTweets[i] = word_substituter(tweets[i])
    puts newTweets[i]
  end
  return newTweets
end


def selective_tweet_shortener(tweet)
  if tweet.length <= 140
    return word_substituter(tweet)
  else
    return tweet
  end
end


