class MainController < ApplicationController

  def index
    @hello = 'Qlease click button \'Run\''
    @users = User.first(10)
  end
end
