class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def show
    @company = Company.find(params[:id])
  end

  def edit
    @company = Company.find(params[:id])
  end

  def update
    @company = Company.find(params[:id])
    if @company.update(company_params)
      logger.debug 'AAA'
      redirect_to @company, notice: "Company was successfully updated."
    else
      logger.debug 'BBB'
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def company_params
    params.require(:company).permit(
      :name, :company_url, :phone_number, :business_category_id, :address,
      :business_description, :number_of_employee, :manager_name, :manager_email
    )
  end
end
