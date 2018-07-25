require "rails_helper"

describe "returns data from oxford" do
  it 'returns sentences for word' do
    # VCR.use_cassette('results') do
      sentence = "So mindfulness of drinking is already one kind of enlightenment."
      params = {source_lang: "en", word_id: "mindfulness"}
      path = 'sentences'

      response = DictionaryService.new(path, params).format_sentence_response
      expect(response).to eq(sentence)
    # end
  end
end
