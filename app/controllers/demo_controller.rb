class DemoController < ApplicationController

  layout false

  def index
  end

  def hello
    @name = params[:name]
  end

end
