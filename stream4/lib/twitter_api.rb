class TwitterApi

require 'tweetstream'

  def self.stream_tweets
    TweetStream::Client.new.track('Russia', 'Ukraine', 'France', 'Spain', 'Sweeden', 'Norway', 'Germany', 'Finland', 'Poland', 'Italy', 'UK', 'United Kingdom', 'Romania', 'Belarus', 'Kazakhstan', 'Greece', 'Bulgaria', 'Iceland', 'Hungary', 'portugal', 'Serbia', 'Ireland', 'Austria', 'Czech Republic', 'Georgia', 'Lithuania', 'Latvia', 'Croatia', 'Bosnia', 'Herzegovina', 'Slovakia', 'Estonia', 'Denmark', 'Netherlands', 'Holland', 'Switzerland', 'Moldova', 'Belgium', 'Albania', 'Macedonia', 'Turkey', 'Slovenia', 'Montenegro', 'Cyprus', 'Azerbaijan', 'Luxembourg', 'Andorra', 'Malta', 'Liechtenstein', 'San Marino', 'Monaco', '	Vatican City') do |status|

    Tweet.create(text: "#{status.text}",)
    puts "#{status.text}"
    end

  end


  def self.client
        TweetStream.configure do |config|
          config.consumer_key       = ENV['TWITTER_CONSUMER_KEY']
          config.consumer_secret    = ENV['TWITTER_CONSUMER_SECRET']
          config.oauth_token        = ENV['TWITTER_OAUTH_TOKEN']
          config.oauth_token_secret = ENV['TWITTER_OAUTH_TOKEN_SECRET']
          config.auth_method        = :oauth
        end
  end


end
