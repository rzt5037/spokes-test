class WelcomeController < ApplicationController
  def index
    redirect_to :controller => 'user', :action => 'index'
  end
end
