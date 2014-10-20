class HomeController < ApplicationController
  layout 'osf-client/application'

  def index
    @currentPage = 'index'
  end

end