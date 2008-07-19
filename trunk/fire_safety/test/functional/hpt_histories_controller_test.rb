require 'test_helper'

class HptHistoriesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:hpt_histories)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_hpt_history
    assert_difference('HptHistory.count') do
      post :create, :hpt_history => { }
    end

    assert_redirected_to hpt_history_path(assigns(:hpt_history))
  end

  def test_should_show_hpt_history
    get :show, :id => hpt_histories(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => hpt_histories(:one).id
    assert_response :success
  end

  def test_should_update_hpt_history
    put :update, :id => hpt_histories(:one).id, :hpt_history => { }
    assert_redirected_to hpt_history_path(assigns(:hpt_history))
  end

  def test_should_destroy_hpt_history
    assert_difference('HptHistory.count', -1) do
      delete :destroy, :id => hpt_histories(:one).id
    end

    assert_redirected_to hpt_histories_path
  end
end
