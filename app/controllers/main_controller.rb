class MainController < ApplicationController

  def index
    @hello = 'PPPlease click button \'Run\''
    @users = User.first(10)
  end
end
