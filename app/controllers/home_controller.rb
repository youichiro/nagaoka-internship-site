class HomeController < ApplicationController
  def index
    @internships = Internship.all.limit(6)
  end
end
