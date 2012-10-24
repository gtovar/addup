require 'test_helper'

class StudentApplicationsControllerTest < ActionController::TestCase
  setup do
    @student_application = student_applications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_applications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_application" do
    assert_difference('StudentApplication.count') do
      post :create, student_application: { answer1: @student_application.answer1, answer2: @student_application.answer2, answer3: @student_application.answer3, cause: @student_application.cause, crowdfundig_goal_usd: @student_application.crowdfundig_goal_usd, current_year: @student_application.current_year, degree: @student_application.degree, email: @student_application.email, field_of_study: @student_application.field_of_study, first_name: @student_application.first_name, last_name: @student_application.last_name, length_of_program: @student_application.length_of_program, link_of_video: @student_application.link_of_video, link_or_attachment_of_photos: @student_application.link_or_attachment_of_photos, nationality: @student_application.nationality, student_sponsor_for_the_community_service_project: @student_application.student_sponsor_for_the_community_service_project, students_university_id_reference: @student_application.students_university_id_reference, time_frame: @student_application.time_frame, total_annual_cost_of_attendance: @student_application.total_annual_cost_of_attendance, university: @student_application.university, univesity_back_account: @student_application.univesity_back_account }
    end

    assert_redirected_to student_application_path(assigns(:student_application))
  end

  test "should show student_application" do
    get :show, id: @student_application
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student_application
    assert_response :success
  end

  test "should update student_application" do
    put :update, id: @student_application, student_application: { answer1: @student_application.answer1, answer2: @student_application.answer2, answer3: @student_application.answer3, cause: @student_application.cause, crowdfundig_goal_usd: @student_application.crowdfundig_goal_usd, current_year: @student_application.current_year, degree: @student_application.degree, email: @student_application.email, field_of_study: @student_application.field_of_study, first_name: @student_application.first_name, last_name: @student_application.last_name, length_of_program: @student_application.length_of_program, link_of_video: @student_application.link_of_video, link_or_attachment_of_photos: @student_application.link_or_attachment_of_photos, nationality: @student_application.nationality, student_sponsor_for_the_community_service_project: @student_application.student_sponsor_for_the_community_service_project, students_university_id_reference: @student_application.students_university_id_reference, time_frame: @student_application.time_frame, total_annual_cost_of_attendance: @student_application.total_annual_cost_of_attendance, university: @student_application.university, univesity_back_account: @student_application.univesity_back_account }
    assert_redirected_to student_application_path(assigns(:student_application))
  end

  test "should destroy student_application" do
    assert_difference('StudentApplication.count', -1) do
      delete :destroy, id: @student_application
    end

    assert_redirected_to student_applications_path
  end
end
