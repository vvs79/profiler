class MainController < ApplicationController

  def index
    RubyProf.start if Rails.env.development?
    @hello = 'Please click button \'Run\''
    @users = User.first(10)
    if Rails.env.development?
      result = RubyProf.stop
      printer = RubyProf::GraphPrinter.new(result)
      printer.print(STDOUT, {})
    end
  end
end
