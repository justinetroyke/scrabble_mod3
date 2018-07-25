class WelcomeController < ApplicationController
  def index
  end

  def sentences
    word = params["word"]

    # response = Faraday.get("https://od-api.oxforddictionaries.com/api/v1/entries/en/mindfulness/sentences/#{ENV['oxford_app_id']}/#{ENV['oxford_app_key']}")
    flash[:notice] = "Examples for using '#{word}'"
    redirect_to root_path
  end
end
