require 'test_helper'

class FirstExamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @first_exam = first_exams(:one)
  end

  test "should get index" do
    get first_exams_url
    assert_response :success
  end

  test "should get new" do
    get new_first_exam_url
    assert_response :success
  end

  test "should create first_exam" do
    assert_difference('FirstExam.count') do
      post first_exams_url, params: { first_exam: { course_id: @first_exam.course_id, first_exam_id: @first_exam.first_exam_id, grade: @first_exam.grade, student_id: @first_exam.student_id } }
    end

    assert_redirected_to first_exam_url(FirstExam.last)
  end

  test "should show first_exam" do
    get first_exam_url(@first_exam)
    assert_response :success
  end

  test "should get edit" do
    get edit_first_exam_url(@first_exam)
    assert_response :success
  end

  test "should update first_exam" do
    patch first_exam_url(@first_exam), params: { first_exam: { course_id: @first_exam.course_id, first_exam_id: @first_exam.first_exam_id, grade: @first_exam.grade, student_id: @first_exam.student_id } }
    assert_redirected_to first_exam_url(@first_exam)
  end

  test "should destroy first_exam" do
    assert_difference('FirstExam.count', -1) do
      delete first_exam_url(@first_exam)
    end

    assert_redirected_to first_exams_url
  end
end
