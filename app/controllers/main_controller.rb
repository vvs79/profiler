class MainController < ApplicationController

  def index
    @hello = 'QWElease click button \'Run\''
    @users = User.first(10)
  end
end
