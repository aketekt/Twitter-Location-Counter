class TwitterApi

require 'tweetstream'

  def self.stream_tweets
    russia, ukraine, france, spain, sweeden, norway, germany, finland, poland, italy, uk, romania, belarus = 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    TweetStream::Client.new.track('Russia', 'Ukraine', 'France', 'Spain', 'Sweeden', 'Norway', 'Germany', 'Finland', 'Poland', 'Italy', 'UK', 'Romania', 'Belarus', 'Kazakhstan', 'Greece', 'Bulgaria', 'Iceland', 'Hungary', 'portugal', 'Serbia', 'Ireland', 'Austria', 'Czech Republic', 'Georgia', 'Lithuania', 'Latvia', 'Croatia', 'Bosnia', 'Herzegovina', 'Slovakia', 'Estonia', 'Denmark', 'Netherlands', 'Holland', 'Switzerland', 'Moldova', 'Belgium', 'Albania', 'Macedonia', 'Turkey', 'Slovenia', 'Montenegro', 'Cyprus', 'Azerbaijan', 'Luxembourg', 'Andorra', 'Malta', 'Liechtenstein', 'San Marino', 'Monaco', 'Vatican City') do |status|
      case "#{status.text}"
      when /Russia/
        russia = russia + 1
        puts "Russia = #{russia}"
      when /Ukraine/
        ukraine = ukraine + 1
        puts "Ukraine = #{ukraine}"
      when /France/
        france = france + 1
        puts "France = #{france}"
      when /Spain/
        spain = spain + 1
        puts "Spain = #{spain}"
      when /Sweeden/
        sweeden = sweeden + 1
        puts "Sweeden = #{sweeden}"
      when /Norway/
        norway = norway + 1
        puts "Norway = #{norway}"
      when /Germany/
        germany = germany + 1
        puts "Germany = #{germany}"
      when /Finland/
        finland = finland + 1
        puts "Finland = #{finland}"
      when /Poland/
        poland = poland + 1
        puts "Poland = #{poland}"
      when /Italy/
        italy = italy + 1
        puts "Italy = #{italy}"
      when /UK/
        uk = uk + 1
        puts "UK = #{uk}"
      when /Romania/
        romania = romania + 1
        puts "Romania = #{romania}"
      when /Belarus/
        belarus = belarus + 1
        puts "Belarus = #{belarus}"
      else
        puts "not included"
      end
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


#  def self.save
#    TweetStream::Client.new.track('Russia', 'Ukraine', 'France', 'Spain', 'Sweeden', 'Norway', 'Germany', 'Finland', 'Poland', 'Italy', 'UK', 'United Kingdom', 'Romania', 'Belarus', 'Kazakhstan', 'Greece', 'Bulgaria', 'Iceland', 'Hungary', 'portugal', 'Serbia', 'Ireland', 'Austria', 'Czech Republic', 'Georgia', 'Lithuania', 'Latvia', 'Croatia', 'Bosnia', 'Herzegovina', 'Slovakia', 'Estonia', 'Denmark', 'Netherlands', 'Holland', 'Switzerland', 'Moldova', 'Belgium', 'Albania', 'Macedonia', 'Turkey', 'Slovenia', 'Montenegro', 'Cyprus', 'Azerbaijan', 'Luxembourg', 'Andorra', 'Malta', 'Liechtenstein', 'San Marino', 'Monaco', 'Vatican City') do |status|
#    Tweet.create(text: "#{status.text}",)
#    end
#  end

end
