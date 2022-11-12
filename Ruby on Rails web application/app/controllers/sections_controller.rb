class SectionsController < ApplicationController
  before_action :set_section, only: %i[ show edit update destroy ]

  # GET /sections or /sections.json
  def index
   # @sections = Section.all
  #  @sections = Section.joins(:Course).joins(:Semester).joins("LEFT JOIN Prefixes ON Prefixes.id = Courses.Prefix_id").where(
  #   "CRN LIKE ?
  #   OR Prefixes.prefix || Courses.number LIKE ?
  #   OR semesters.semester LIKE ?
  #   OR semesters.year LIKE ?
  #   OR semesters.semester || ' ' || semesters.year LIKE ?",
  #   "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%")
    @students = Student.all
    if params[:query]
      @sections = Section.where("Crn like ?", "%#{params[:query]}%")
    else
      @sections = Section.all
    end
  end

  # GET /sections/1 or /sections/1.json
  def show
  end

  # GET /sections/new
  def new
    @section = Section.new
    @students = Student.all
  end

  # GET /sections/1/edit
  def edit
    @students = Student.all
  end

  # POST /sections or /sections.json
  def create
    @section = Section.new(section_params)

    respond_to do |format|
      if @section.save
        format.html { redirect_to section_url(@section), notice: "Section was successfully created." }
        format.json { render :show, status: :created, location: @section }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sections/1 or /sections/1.json
  def update
    respond_to do |format|
      if @section.update(section_params)
        format.html { redirect_to section_url(@section), notice: "Section was successfully updated." }
        format.json { render :show, status: :ok, location: @section }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sections/1 or /sections/1.json
  def destroy
    @section.destroy

    respond_to do |format|
      format.html { redirect_to sections_url, notice: "Section was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_section
      @section = Section.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def section_params
      params.require(:section).permit(:Crn, :course_id, :semester_id)
      params.require(:section).permit(:Crn, :course_id, :semester_id, :student_ids => [])
    end
end
