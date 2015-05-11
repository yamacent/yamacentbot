require 'twitter'
require './tweet_content'

config = {
  consumer_key:        ENV['CONS_KEY'],
  consumer_secret:     ENV['CONS_SEC'],
  access_token:        ENV['ACCS_TOK'],
  access_token_secret: ENV['ACCS_SEC'],
}

if __FILE__ == $PROGRAM_NAME
  client = Twitter::REST::Client.new(config)
  client.update(TweetContent.buildTweet)
end
