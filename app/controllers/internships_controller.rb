class InternshipsController < ApplicationController
  before_action :set_internship, only: %i[ show edit update destroy ]

  # GET /internships
  def index
    @internships = Internship.all
  end

  # GET /internships/1
  def show
  end

  # GET /internships/new
  def new
    @internship = Internship.new
  end

  # GET /internships/1/edit
  def edit
  end

  # POST /internships
  def create
    @internship = Internship.new(internship_params)

    if @internship.save
      redirect_to @internship, notice: "Internship was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /internships/1
  def update
    if @internship.update(internship_params)
      redirect_to @internship, notice: "Internship was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /internships/1
  def destroy
    @internship.destroy
    redirect_to internships_url, notice: "Internship was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_internship
      @internship = Internship.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def internship_params
      params.fetch(:internship, {})
    end
end
