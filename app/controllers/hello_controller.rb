class HelloController < ApplicationController
  def index
    render plain: 'ok'
  end
end
