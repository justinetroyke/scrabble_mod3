class DictionaryService
  def initialize(path, params = {})
    @url = "https://od-api.oxforddictionaries.com:443/api/v1/"
    @path = "#{path.first}/#{params[:source_lang]}/#{params[:word_id]}/sentences"
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
    end
    JSON.parse(response.body)
  end

  def format_sentence_response
    response['results'].first['lexicalEntries'].first['sentences'].first['text']
  end
end
