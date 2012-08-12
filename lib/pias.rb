require 'HTTParty'

class TinySong
  include HTTParty

  API_KEY="a7a9aeb495388ed7bcd8086fa414a775"

  def initialize
  end

  def play_song
    return 'Please enter a song' if ARGV.count == 0

    song = ARGV.join "+"

    params= {:query => {:format => "json", :key => API_KEY}}
    response=self.class.get("http://tinysong.com/a/#{song}", params)
    url=response.parsed_response.delete("\\")

    if url =~ /tinysong\.com/
      puts "Play it again Sam #{url}"
      `open #{url}`      
    else 
      puts "Error accessing API, try again later."
    end
  end
end