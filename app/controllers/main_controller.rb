class MainController < ApplicationController

  def index
    @hello = 'PPlease click button \'Run\''
    @users = User.first(10)
  end
end
