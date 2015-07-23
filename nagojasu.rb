require 'twitter'

CONSUMER_KEY = ""
CONSUMER_SECRET = ""
OAUTH_TOEKN = ""
OAUTH_TOEKN_SECRET =""

client = Twitter::REST::Client.new do |config|
  config.consumer_key = CONSUMER_KEY
  config.consumer_secret = CONSUMER_SECRET
  config.access_token = OAUTH_TOEKN
  config.access_token_secret = OAUTH_TOEKN_SECRET
end

client.update("名護ジャスなー", {lat: 26.6097949, long: 127.984752})

