require 'test_helper'

class InspectionHistoriesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:inspection_histories)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_inspection_history
    assert_difference('InspectionHistory.count') do
      post :create, :inspection_history => { }
    end

    assert_redirected_to inspection_history_path(assigns(:inspection_history))
  end

  def test_should_show_inspection_history
    get :show, :id => inspection_histories(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => inspection_histories(:one).id
    assert_response :success
  end

  def test_should_update_inspection_history
    put :update, :id => inspection_histories(:one).id, :inspection_history => { }
    assert_redirected_to inspection_history_path(assigns(:inspection_history))
  end

  def test_should_destroy_inspection_history
    assert_difference('InspectionHistory.count', -1) do
      delete :destroy, :id => inspection_histories(:one).id
    end

    assert_redirected_to inspection_histories_path
  end
end
