class Weather

def initialize(latlong)
    @latlong = latlong
    #@coords = "37.8267,-122.4233"
end

    def get_weather(coords)
        response = RestClient::Request.execute(
        method: :get,
        url: "https://api.darksky.net/forecast/#{ENV["DARKSKY"]}/#{coords}?exclude=minutely",
        )
        puts "DARKSKY API REQUEST FIRED"
        weather = JSON.parse(response)

    end


    def cached_weather()
       Rails.cache.fetch("wx/#{@latlong}", :expires_in => 30.minutes) do
          get_weather(@latlong)
       end
    end
end
