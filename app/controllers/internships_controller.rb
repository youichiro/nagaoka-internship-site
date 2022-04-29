class InternshipsController < ApplicationController
  def show
    @internship = Internship.find(params[:id])
  end
end
