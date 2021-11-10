require "test_helper"

class ClassSchoolTeachersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get class_school_teachers_index_url
    assert_response :success
  end

  test "should get new" do
    get class_school_teachers_new_url
    assert_response :success
  end

  test "should get edit" do
    get class_school_teachers_edit_url
    assert_response :success
  end
end
