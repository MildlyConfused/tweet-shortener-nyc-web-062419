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
    puts word
  end
  $dictionary.collect do |long, short|
    
  end
  
end

word_subsituter("two four")