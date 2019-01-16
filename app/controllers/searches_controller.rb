require 'googlebooks'
class SearchesController < ApplicationController
  
  def index
  
  end

  def show
    @searchBook = params[:q]
    @searchBook
  end

  

end
