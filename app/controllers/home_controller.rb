class HomeController < ApplicationController
  layout 'osf-client/application'

  def index
    @current_page = 'index'
  end

end