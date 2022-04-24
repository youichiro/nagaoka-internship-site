class InternshipsController < ApplicationController
  def index
    @internships = Internship.all
  end

  def show
    @internship = Internship.find(params[:id])
  end

  def new
    @internship = Internship.new
  end

  def edit
    @internship = Internship.find(params[:id])
  end

  def create
    a = internship_params
    a[:company_id] = params[:company_id].to_i
    @internship = Internship.new(a)

    if @internship.save
      redirect_to company_internships_path, notice: "Internship was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @internship = Internship.find(params[:id])
    if @internship.update(internship_params)
      redirect_to @internship, notice: "Internship was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @internship = Internship.find(params[:id])
    @internship.destroy
    redirect_to internships_url, notice: "Internship was successfully destroyed."
  end

  private

  def internship_params
    params.require(:internship).permit(
      :title, :description, :start_date, :end_date, :deadline,
      :location, :target, :video_url, :thumbnail_url, :acceptable_number, :others, :company_id
    )
  end
end
