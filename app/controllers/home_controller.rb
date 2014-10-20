class HomeController < ApplicationController
  layout 'client'

  def index
    @currentPage = 'index'
  end

end