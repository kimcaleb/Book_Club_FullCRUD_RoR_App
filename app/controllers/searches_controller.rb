require 'googlebooks'
class SearchesController < ApplicationController
  
  def index
  
  end

  def show
    @search = params[:q]
    @results = GoogleBooks.search(@search,{:count => 30})
  end

  

end
