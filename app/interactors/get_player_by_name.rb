require 'net/http'
require 'json'

class GetPlayerByName

  def self.perform(name)
    url = "#{ENV['RIOT_BASE_URL']}/api/lol/na/v1.4/summoner/by-name/#{name}?api_key=#{ENV['RIOT_API_KEY']}"
    uri = URI(url)
    response_body = Net::HTTP.get(uri)
    parsed_body = JSON.parse(response_body)
  end

end
