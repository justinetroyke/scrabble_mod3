class WelcomeController < ApplicationController
  def index
  end

  def sentences
    word = params["word"]
    flash[:notice] = "Examples for using '#{word}'"
    redirect_to root_path
  end
end
