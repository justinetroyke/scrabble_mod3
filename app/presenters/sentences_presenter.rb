class SentencesPresenter
  attr_reader :word

  def initialize(word)
    @word = word
  end

  def params
    {source_lang: "en", word_id: @word}
  end

  def path
    ['entries', 'sentences']
  end

  def dictionary_entries
    DictionaryService.new(path, params).sentence_format
  end

  def sorting_na
    dictionary_entries.find_all { |region| region["regions"] == ["North American"] }
  end

  def sentences
    sorting_na.map do |entry|
      Sentence.new(entry)
    end
  end
end
