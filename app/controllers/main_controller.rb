class MainController < ApplicationController

  def index
    @hello = 'Please click button \'Run\''
    @users = User.first(10)
  end
end
