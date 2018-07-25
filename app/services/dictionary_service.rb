class DictionaryService
  def initialize(path, params = {})
    @url = "https://od-api.oxforddictionaries.com/api/v1/"
    @path = "entries/en/mindfulness/sentences"
    @ending = "/#{path.last}"
  end

  def conn
    Faraday.new(@url)
  end

  def response
    response = conn.get do |request|
      request.url @path
      request.headers["app_id"] = ENV['oxford_app_id']
      request.headers["app_key"] = ENV['oxford_app_key']
      binding.pry
    end
    JSON.parse(response.body)
  end

  def format_sentence_response
  end
end
