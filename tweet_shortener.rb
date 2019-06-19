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
  if tweet.length > 140
    return word_substituter(tweet)
  else
    return tweet
  end
end


def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    shortTweet = word_substituter(tweet)
  else
    return tweet
  end
  if shortTweet.length > 140
    truncTweet = shortTweet[0..136] + "..."
    return truncTweet
  else
    return shortTweet
  end
    
end

puts shortened_tweet_truncator("GUISEEEEE this is so fun! I'm tweeting for you guys and this tweet is SOOOO long it's gonna be way more than you would think twitter can handle, so shorten it up you know what I mean? I just can never tell how long to keep typing!")
