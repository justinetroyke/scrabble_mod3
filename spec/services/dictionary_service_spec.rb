require "rails_helper"

describe "returns data from oxford" do
  it 'returns sentences for word' do
    sentence = "So mindfulness of drinking is already one kind of enlightenment."
    params = {source_lang: "en", word_id: "mindfulness"}
    path = ['entries', 'sentences']

    response = DictionaryService.new(path, params).format_sentence_response
    expect(response).to eq(sentence)
  end
end
