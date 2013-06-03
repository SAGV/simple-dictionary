class TranslationsController < ApplicationController
  def new
  	@translation = Translation.new
  end

  def create
  	@translation = Translation.new(params[:translation])

  	if @translation.save
  		redirect_to translations_path
  	else
  		redirect_to translations_path
  		flash.now[:error] = "Looks like we have no translation for that word..."
  	end
  end

  def index
  	@translation = Translation.new
  	@translations = Translation.last(10).reverse
  	@languages_hash = {
  		english: 'en',
  		spanish: 'es',
  		french: 'fr',
  		polish: 'pl',
  		russian: 'ru'
  	}
  end
end
