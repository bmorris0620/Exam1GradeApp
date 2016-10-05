class SecondExamsController < ApplicationController
  before_action :set_second_exam, only: [:show, :edit, :update, :destroy]

  # GET /second_exams
  # GET /second_exams.json
  def index
    @second_exams = SecondExam.all
  end

  # GET /second_exams/1
  # GET /second_exams/1.json
  def show
  end

  # GET /second_exams/new
  def new
    @second_exam = SecondExam.new
  end

  # GET /second_exams/1/edit
  def edit
  end

  # POST /second_exams
  # POST /second_exams.json
  def create
    @second_exam = SecondExam.new(second_exam_params)

    respond_to do |format|
      if @second_exam.save
        format.html { redirect_to @second_exam, notice: 'Second exam was successfully created.' }
        format.json { render :show, status: :created, location: @second_exam }
      else
        format.html { render :new }
        format.json { render json: @second_exam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /second_exams/1
  # PATCH/PUT /second_exams/1.json
  def update
    respond_to do |format|
      if @second_exam.update(second_exam_params)
        format.html { redirect_to @second_exam, notice: 'Second exam was successfully updated.' }
        format.json { render :show, status: :ok, location: @second_exam }
      else
        format.html { render :edit }
        format.json { render json: @second_exam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /second_exams/1
  # DELETE /second_exams/1.json
  def destroy
    @second_exam.destroy
    respond_to do |format|
      format.html { redirect_to second_exams_url, notice: 'Second exam was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_second_exam
      @second_exam = SecondExam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def second_exam_params
      params.require(:second_exam).permit(:second_exam_id, :grade, :course_id, :student)
    end
end
