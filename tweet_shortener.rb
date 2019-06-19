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
      if sepTweet[word] == long
        sepTweet[word] = short
      end
    end
  end
  newTweet = ""
  for i in range
    newTweet = newTweet + " " + sepTweet[i]
  end
  newTweet[0] = ''
  puts newTweet
  newTweet
end


def bulk_tweet_shortener(tweets)
  range = 0..tweets.length-1
  newTweets = []
  for i in range
    newTweets[i] = word_substituter(tweets[i])
  end
  return newTweets
end



word_substituter("Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!")



