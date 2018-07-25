class WelcomeController < ApplicationController
  def index
  end

  def sentences
    word = params["word"]

    response = Faraday.get('https://od-api.oxforddictionaries.com/api/v1/entries/en/mindfulness/sentences')
    binding.pry
    flash[:notice] = "Examples for using '#{word}'"
    redirect_to root_path
  end
end
