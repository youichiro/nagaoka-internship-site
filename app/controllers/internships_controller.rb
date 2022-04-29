class InternshipsController < ApplicationController
  def index
    @internships = Internship.all
  end

  def show
    @internship = Internship.find(params[:id])
  end
end
