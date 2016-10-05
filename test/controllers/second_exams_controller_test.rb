require 'test_helper'

class SecondExamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @second_exam = second_exams(:one)
  end

  test "should get index" do
    get second_exams_url
    assert_response :success
  end

  test "should get new" do
    get new_second_exam_url
    assert_response :success
  end

  test "should create second_exam" do
    assert_difference('SecondExam.count') do
      post second_exams_url, params: { second_exam: { course_id: @second_exam.course_id, grade: @second_exam.grade, second_exam_id: @second_exam.second_exam_id, student: @second_exam.student } }
    end

    assert_redirected_to second_exam_url(SecondExam.last)
  end

  test "should show second_exam" do
    get second_exam_url(@second_exam)
    assert_response :success
  end

  test "should get edit" do
    get edit_second_exam_url(@second_exam)
    assert_response :success
  end

  test "should update second_exam" do
    patch second_exam_url(@second_exam), params: { second_exam: { course_id: @second_exam.course_id, grade: @second_exam.grade, second_exam_id: @second_exam.second_exam_id, student: @second_exam.student } }
    assert_redirected_to second_exam_url(@second_exam)
  end

  test "should destroy second_exam" do
    assert_difference('SecondExam.count', -1) do
      delete second_exam_url(@second_exam)
    end

    assert_redirected_to second_exams_url
  end
end
