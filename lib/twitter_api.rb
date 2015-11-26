class TwitterApi

require 'tweetstream'

  def self.stream_tweets
    russia, ukraine, france, spain, sweeden, norway, germany, finland, poland, italy, uk, romania, belarus, kazakhstan, greece, bulgaria, iceland, hungary, portugal, serbia, ireland, austria, czech, georgia, lithuania, latvia, croatia, bosnia, herzegovina, slovakia, estonia, denmark, netherlands, switzerland, moldova, belgium, albania, macedonia, turkey, slovenia, montenegro, cyprus, azerbaijan, luxembourg, andorra, malta, liechtenstein, san, monaco, vatican = 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    TweetStream::Client.new.track('Russia', 'Ukraine', 'France', 'Spain', 'Sweeden', 'Norway', 'Germany', 'Finland', 'Poland', 'Italy', 'UK', 'Romania', 'Belarus', 'Kazakhstan', 'Greece', 'Bulgaria', 'Iceland', 'Hungary', 'portugal', 'Serbia', 'Ireland', 'Austria', 'Czech Republic', 'Georgia', 'Lithuania', 'Latvia', 'Croatia', 'Bosnia', 'Herzegovina', 'Slovakia', 'Estonia', 'Denmark', 'Netherlands', 'Switzerland', 'Moldova', 'Belgium', 'Albania', 'Macedonia', 'Turkey', 'Slovenia', 'Montenegro', 'Cyprus', 'Azerbaijan', 'Luxembourg', 'Andorra', 'Malta', 'Liechtenstein', 'San Marino', 'Monaco', 'Vatican City') do |status|
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
      when /Kazakhstan/
        kazakhstan = kazakhstan + 1
        puts "kazakhstan = #{kazakhstan}"
      when /Greece/
        greece = greece + 1
        puts "Greece = #{greece}"
      when /Bulgaria/
        bulgaria = bulgaria + 1
        puts "Bulgaria = #{bulgaria}"
      when /Iceland/
        iceland = iceland + 1
        puts "Iceland = #{iceland}"
      when /Hungary/
        hungary = hungary + 1
        puts "Hungary = #{hungary}"
      when /Portugal/
        portugal = portugal + 1
        puts "Portugal = #{portugal}"
      when /Serbia/
        serbia = serbia + 1
        puts "Serbia = #{serbia}"
      when /Ireland/
        ireland = ireland + 1
        puts "Ireland = #{ireland}"
      when /Austria/
        austria = austria + 1
        puts "Austria = #{austria}"
      when /Czech Republic/
        czech = czech + 1
        puts "Czech Republic = #{czech}"
      when /Georgia/
        georgia = georgia + 1
        puts "Georgia = #{georgia}"
      when /Lithuania/
        lithuania = lithuania + 1
        puts "Lithuania = #{lithuania}"
      when /Latvia/
        latvia = latvia + 1
        puts "Latvia = #{latvia}"
      when /Croatia/
        croatia = croatia + 1
        puts "Croatia = #{croatia}"
      when /Bosnia/
        bosnia = bosnia + 1
        puts "Bosnia = #{bosnia}"
      when /Belarus/
        belarus = belarus + 1
        puts "Belarus = #{belarus}"
      when /Herzegovina/
        herzegovina = herzegovina + 1
        puts "Herzegovina = #{herzegovina}"
      when /Slovakia/
        slovakia = slovakia + 1
        puts "Slovakia = #{slovakia}"
      when /Estonia/
        estonia = estonia + 1
        puts "Estonia = #{estonia}"
      when /Denmark/
        denmark = denmark + 1
        puts "Denmark = #{denmark}"
      when /Netherlands/
        netherlands = netherlands + 1
        puts "netherlands = #{netherlands}"
      when /Switzerland/
        switzerland = switzerland + 1
        puts "Switzerland = #{switzerland}"
      when /Moldova/
        moldova = moldova + 1
        puts "Moldova = #{moldova}"
      when /Belgium/
        belgium = belgium + 1
        puts "Belgium = #{belgium}"
      when /Albania/
        albania = albania + 1
        puts "Albania = #{albania}"
      when /Macedonia/
        macedonia = macedonia + 1
        puts "macedonia = #{macedonia}"
      when /Turkey/
        turkey = turkey + 1
        puts "Turkey = #{turkey}"
      when /Slovenia/
        slovenia = slovenia + 1
        puts "Slovenia = #{slovenia}"
      when /Montenegro/
        montenegro = montenegro + 1
        puts "Montenegro = #{montenegro}"
      when /Cyprus/
        cyprus = cyprus + 1
        puts "Cyprus = #{cyprus}"
      when /Azerbaijan/
        azerbaijan = azerbaijan + 1
        puts "Azerbaijan = #{azerbaijan}"
      when /Luxembourg/
        luxembourg = luxembourg + 1
        puts "Luxembourg = #{luxembourg}"
      when /Andorra/
        andorra = andorra + 1
        puts "Andorra = #{andorra}"
      when /Malta/
        malta = malta + 1
        puts "Malta = #{malta}"
      when /Liechtenstein/
        liechtenstein = liechtenstein + 1
        puts "Liechtenstein = #{liechtenstein}"
      when /San Marino/
        san = san + 1
        puts "San Marino = #{san}"
      when /Monaco/
        monaco = monaco + 1
        puts "Monaco = #{monaco}"
      when /Vatican City/
        vatican = vatican + 1
        puts "Vatican City = #{vatican}"
      else
        puts "error"
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
