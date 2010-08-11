require 'test_helper'

class ResultsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Result.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Result.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Result.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to result_url(assigns(:result))
  end
  
  def test_edit
    get :edit, :id => Result.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Result.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Result.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Result.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Result.first
    assert_redirected_to result_url(assigns(:result))
  end
  
  def test_destroy
    result = Result.first
    delete :destroy, :id => result
    assert_redirected_to results_url
    assert !Result.exists?(result.id)
  end
end
