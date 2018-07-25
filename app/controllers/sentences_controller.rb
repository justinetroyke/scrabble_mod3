class SentencesController < ApplicationController
  def index
    word = params["word"]
    service_params = {source_lang: "en", word_id: word}
    path = ['entries', 'sentences']
    @examples = DictionaryService.new(path, service_params).format_sentence_response
    flash[:notice] = "Examples for using '#{word}'"
  end
end
