require 'twitter_oauth'
require 'net/http'
require 'uri'

class Twitter2

  @@SLEEP_TIME = 1

  #
  # TwitterAPI�̔F�؂��s��
  #
  def auth
    @twitter = TwitterOAuth::Client.new(
      :consumer_key    => ENV['TWITTER_API_KEY'],
      :consumer_secret => ENV['TWITTER_API_SECRET'],
    )
    puts "Twitter API�̔F�؊���"
  end

  #
  # �������[�h�ɍ��v����c�C�[�g�ꗗ���擾
  #
  def search_pictures(word, num = 10, opt = {})
    @twitter or self.auth
    params = {
      lang:        'ja',
      locale:      'ja',
      result_type: 'mixed',
      count:       200,
    }.merge(opt)
    puts "�摜������(�c��#{num}��)"

    tweets = @twitter.search(word, params)['statuses']
    max_id = tweets[-1]['id']
    pictures = extract_pictures_from_tweets(tweets)

    if num <= pictures.count
      return pictures.take(num)
    else
      sleep @@SLEEP_TIME
      return pictures.concat self.search_pictures(word, num - pictures.count, max_id: max_id)
    end
  end

  #
  # �c�C�b�^�[��̉摜���܂Ƃ߂ă_�E�����[�h����
  #
  def download_pictures(word, download_dir, num = 10)
    pictures = self.search_pictures(word, num)
    pictures.each_with_index do |picture, idx|
      filename = File.basename(picture)
      filepath = "#{download_dir}/#{filename}"
      open(filepath, 'wb') do |file|
        puts "downloading(#{idx + 1}/#{pictures.count}): #{picture}"
        file.puts(Net::HTTP.get_response(URI.parse(picture)).body)
      end
      sleep @@SLEEP_TIME
    end
  end

  private

    #
    # TwitterAPI�Ŏ擾�����c�C�[�g�ꗗ����media���𔲂����
    #
    def extract_pictures_from_tweets(tweets)
      pictures = tweets.map do |t|
        if media = t['entities']['media']
          media.map {|m| m['media_url']}
        else
          []
        end
      end
      pictures.flatten.uniq
    end

end