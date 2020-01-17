class MainController < ApplicationController

  def index
    User.limit(10).destroy_all if User.count > 15
    @hello = 'Hello my friend'
    @users = User.all.order(id: :desc)
  end
end
