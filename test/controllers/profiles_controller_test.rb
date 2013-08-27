require 'test_helper'

class ProfilesControllerTest < ActionController::TestCase
  test "should get show" do
    get :show#, id: users(:naomi).profile_name
    assert_response :success
    assert_template 'profiles/show'
  end

  test "should render a 404 on profile not found" do
  	get :show, id: "doesn't exist"
  	assert_response :not_found
  end

  test "that variables are assigned on successful profile views"
  	get :show#, id: users(:naomi).profile_name
  	assert assigns(:user)
  	#assert_not_empty assigns(:magazines)
  end

  test "only shows the correct user's statuses" do
  	get :show#, id: users(:naomi).profile_name
  	#already know assigns is working so loop through them
  	assigns(:magazines).each do |magazine|
  		assert_equal users(:naomi), status.user
  end
end
