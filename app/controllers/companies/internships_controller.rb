class Companies::InternshipsController < ApplicationController
  before_action :authenticate_employee!
  before_action :validate_company!

  def index
    @internships = Internship.where(company_id: params[:company_id])
    @company = Company.find(params[:company_id])
  end

  def show
    @internship = Internship.find(params[:id])
    @company = @internship.company
  end

  def new
    @internship = Internship.new
    @company = Company.find(params[:company_id])
  end

  def edit
    @internship = Internship.find(params[:id])
    @company = @internship.company
  end

  def create
    a = internship_params
    a[:company_id] = params[:company_id].to_i
    @internship = Internship.new(a)
    @company = Company.find(params[:company_id])

    if @internship.save
      redirect_to company_internships_path, notice: "Internship was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @internship = Internship.find(params[:id])
    @company = @internship.company

    if @internship.update(internship_params)
      redirect_to company_internship_path(id: @internship.id), notice: "Internship was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @internship = Internship.find(params[:id])
    @internship.destroy
    redirect_to company_internships_url(@internship.company), notice: "Internship was successfully destroyed."
  end

  private

  def validate_company!
    redirect_to root_path, alert: "権限がありません" if params[:company_id].to_i != current_employee.company.id
  end

  def internship_params
    params.require(:internship).permit(
      :title, :description, :start_date, :end_date, :deadline,
      :location, :target, :thumbnail, :acceptable_number, :others, :company_id
    )
  end
end
