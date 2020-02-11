class MainController < ApplicationController

  def index
    @hello = 'Hello my friend'
    @users = User.first(10)
  end
end
