require 'test_helper'

class StoreControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success #reviso que el index sea traido 
    assert_select '#columns #side a', minimum: 4 #reviso formato CSS
	assert_select '#main .entry', 3 #reviso formato CSS
	assert_select 'h3', 'Programming Ruby 1.9' #reviso formato CSS
	assert_select '.price', /\$[,\d]+\.\d\d/#reviso formato CSS

  end

end
