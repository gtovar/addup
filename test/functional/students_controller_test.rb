require 'test_helper'

class StudentsControllerTest < ActionController::TestCase
  setup do
    @student = students(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:students)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student" do
    assert_difference('Student.count') do
      post :create, student: { campaign: @student.campaign, city: @student.city, cost_per_year: @student.cost_per_year, country: @student.country, current_year: @student.current_year, last_name: @student.last_name, maternal_surname: @student.maternal_surname, name: @student.name, paternal_surname: @student.paternal_surname, question1: @student.question1, question2: @student.question2, teacher_id: @student.teacher_id, university_career_id: @student.university_career_id, url_facebook: @student.url_facebook, url_twitter: @student.url_twitter, url_university: @student.url_university, url_video: @student.url_video, verified: @student.verified }
    end

    assert_redirected_to student_path(assigns(:student))
  end

  test "should show student" do
    get :show, id: @student
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student
    assert_response :success
  end

  test "should update student" do
    put :update, id: @student, student: { campaign: @student.campaign, city: @student.city, cost_per_year: @student.cost_per_year, country: @student.country, current_year: @student.current_year, last_name: @student.last_name, maternal_surname: @student.maternal_surname, name: @student.name, paternal_surname: @student.paternal_surname, question1: @student.question1, question2: @student.question2, teacher_id: @student.teacher_id, university_career_id: @student.university_career_id, url_facebook: @student.url_facebook, url_twitter: @student.url_twitter, url_university: @student.url_university, url_video: @student.url_video, verified: @student.verified }
    assert_redirected_to student_path(assigns(:student))
  end

  test "should destroy student" do
    assert_difference('Student.count', -1) do
      delete :destroy, id: @student
    end

    assert_redirected_to students_path
  end
end
