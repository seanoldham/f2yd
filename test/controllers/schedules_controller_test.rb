require 'test_helper'

class SchedulesControllerTest < ActionController::TestCase
  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

end
