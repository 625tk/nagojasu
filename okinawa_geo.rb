require 'twitter'

CONSUMER_KEY = ''.freeze
CONSUMER_SECRET = ''.freeze
OAUTH_TOEKN = ''.freeze
OAUTH_TOEKN_SECRET = ''.freeze

client = Twitter::REST::Client.new do |config|
  config.consumer_key = CONSUMER_KEY
  config.consumer_secret = CONSUMER_SECRET
  config.access_token = OAUTH_TOEKN
  config.access_token_secret = OAUTH_TOEKN_SECRET
end

case ARGV[0]
  when 'nago' then
    client.update('名護ジャスなー', { lat: 26.6097949, long: 127.984752 })
  when 'rycom' then
    client.update('ライカムなー', { lat: 26.31419, long: 127.795667 })
  else
    client.update('沖縄なー', { lat: 26.20556, long: 127.65083 })
end
