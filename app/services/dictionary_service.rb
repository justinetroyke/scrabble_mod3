class DictionaryService
  def initialize(path, params = {})
    @url = "https://od-api.oxforddictionaries.com:443/api/v1/"
    @path = "#{path.first}/#{params[:source_lang]}/#{params[:word_id]}/#{path.last}"
  end

  def conn
    Faraday.new(@url) do |faraday|
      faraday.headers["app_id"] = ENV['oxford_app_id']
      faraday.headers["app_key"] = ENV['oxford_app_key']
      faraday.adapter  Faraday.default_adapter
    end
  end

  def response
    response = conn.get @path
    JSON.parse(response.body)
  end

  def sentence_format
    regions = response['results'].first['lexicalEntries'].first['sentences']
    # entries = regions.find_all { |region| region["regions"] == ["North American"] }
    # entries.map { |entry| entry["text"] }
  end
end
