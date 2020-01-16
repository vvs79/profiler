class MainController < ApplicationController
  
  # https://habr.com/ru/post/482330/
  def index
    @hello = 'Hello my friend'
  end
end
