class FirstExamsController < ApplicationController
  before_action :set_first_exam, only: [:show, :edit, :update, :destroy]

  # GET /first_exams
  # GET /first_exams.json
  def index
    @first_exams = FirstExam.all
  end

  # GET /first_exams/1
  # GET /first_exams/1.json
  def show
  end

  # GET /first_exams/new
  def new
    @first_exam = FirstExam.new
  end

  # GET /first_exams/1/edit
  def edit
  end

  # POST /first_exams
  # POST /first_exams.json
  def create
    @first_exam = FirstExam.new(first_exam_params)

    respond_to do |format|
      if @first_exam.save
        format.html { redirect_to @first_exam, notice: 'First exam was successfully created.' }
        format.json { render :show, status: :created, location: @first_exam }
      else
        format.html { render :new }
        format.json { render json: @first_exam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /first_exams/1
  # PATCH/PUT /first_exams/1.json
  def update
    respond_to do |format|
      if @first_exam.update(first_exam_params)
        format.html { redirect_to @first_exam, notice: 'First exam was successfully updated.' }
        format.json { render :show, status: :ok, location: @first_exam }
      else
        format.html { render :edit }
        format.json { render json: @first_exam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /first_exams/1
  # DELETE /first_exams/1.json
  def destroy
    @first_exam.destroy
    respond_to do |format|
      format.html { redirect_to first_exams_url, notice: 'First exam was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_first_exam
      @first_exam = FirstExam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def first_exam_params
      params.require(:first_exam).permit(:first_exam_id, :grade, :course_id, :student_id)
    end
end
