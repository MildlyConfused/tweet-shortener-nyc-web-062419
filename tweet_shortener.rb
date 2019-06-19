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

def word_subsituter(tweet)
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
  puts newTweet
  
end

word_subsituter("two four")