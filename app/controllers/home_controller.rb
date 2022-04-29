class HomeController < ApplicationController
  def index
    @internships = Internship.all.limit(100)
    @courses = Course.all.limit(100)
  end
end
