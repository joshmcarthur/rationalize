module Rationalize
  class TranslationsController < ApplicationController

    unloadable
    
    layout 'rationalize'  # this allows you to have a gem-wide layout
    
    def index
      @translations = TRANSLATION_STORE
    end
    
    def create
      I18n.backend.store_translations(
        params[:locale],
        {params[:key] => params[:value]},
        :escape => false)
      redirect_to rationalize_translations_path, :notice => "Translation added."
    end
  end
end
