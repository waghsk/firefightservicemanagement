require 'test_helper'

class ItemSubtypesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:item_subtypes)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_item_subtype
    assert_difference('ItemSubtype.count') do
      post :create, :item_subtype => { }
    end

    assert_redirected_to item_subtype_path(assigns(:item_subtype))
  end

  def test_should_show_item_subtype
    get :show, :id => item_subtypes(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => item_subtypes(:one).id
    assert_response :success
  end

  def test_should_update_item_subtype
    put :update, :id => item_subtypes(:one).id, :item_subtype => { }
    assert_redirected_to item_subtype_path(assigns(:item_subtype))
  end

  def test_should_destroy_item_subtype
    assert_difference('ItemSubtype.count', -1) do
      delete :destroy, :id => item_subtypes(:one).id
    end

    assert_redirected_to item_subtypes_path
  end
end
