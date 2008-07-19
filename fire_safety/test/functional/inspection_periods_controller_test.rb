require 'test_helper'

class InspectionPeriodsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:inspection_periods)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_inspection_period
    assert_difference('InspectionPeriod.count') do
      post :create, :inspection_period => { }
    end

    assert_redirected_to inspection_period_path(assigns(:inspection_period))
  end

  def test_should_show_inspection_period
    get :show, :id => inspection_periods(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => inspection_periods(:one).id
    assert_response :success
  end

  def test_should_update_inspection_period
    put :update, :id => inspection_periods(:one).id, :inspection_period => { }
    assert_redirected_to inspection_period_path(assigns(:inspection_period))
  end

  def test_should_destroy_inspection_period
    assert_difference('InspectionPeriod.count', -1) do
      delete :destroy, :id => inspection_periods(:one).id
    end

    assert_redirected_to inspection_periods_path
  end
end
