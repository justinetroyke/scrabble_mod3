require "rails_helper"

describe "returns data from oxford" do
  it 'returns sentences for word' do
    sentence = "So mindfulness of drinking is already one kind of enlightenment."
    sentence2 = "Long practice at meditation or mindfulness can also dispel the illusion."
    params = {source_lang: "en", word_id: "mindfulness"}
    path = ['entries', 'sentences']

    response = DictionaryService.new(path, params).format_sentence_response
    expect(response.first).to eq(sentence)
    expect(response.last).to eq(sentence2)
  end
end
