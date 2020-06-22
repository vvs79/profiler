class MainController < ApplicationController

  def index
  	RubyProf.start
    @hello = 'Please click button \'Run\''
    @users = User.first(10)
    result = RubyProf.stop
    printer = RubyProf::GraphPrinter.new(result)
    printer.print(STDOUT, {})
  end
end
