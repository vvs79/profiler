class MainController < ApplicationController

  def index
    @hello = 'QWlease click button \'Run\''
    @users = User.first(10)
  end
end
