class HomeController < ApplicationController
  def index
    @internships = Internship.all
  end
end
