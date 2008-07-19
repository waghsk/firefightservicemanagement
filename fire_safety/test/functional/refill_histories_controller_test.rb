require 'test_helper'

class RefillHistoriesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:refill_histories)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_refill_history
    assert_difference('RefillHistory.count') do
      post :create, :refill_history => { }
    end

    assert_redirected_to refill_history_path(assigns(:refill_history))
  end

  def test_should_show_refill_history
    get :show, :id => refill_histories(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => refill_histories(:one).id
    assert_response :success
  end

  def test_should_update_refill_history
    put :update, :id => refill_histories(:one).id, :refill_history => { }
    assert_redirected_to refill_history_path(assigns(:refill_history))
  end

  def test_should_destroy_refill_history
    assert_difference('RefillHistory.count', -1) do
      delete :destroy, :id => refill_histories(:one).id
    end

    assert_redirected_to refill_histories_path
  end
end
