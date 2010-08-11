require 'test_helper'

class ResponsesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Response.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Response.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Response.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to response_url(assigns(:response))
  end
  
  def test_edit
    get :edit, :id => Response.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Response.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Response.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Response.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Response.first
    assert_redirected_to response_url(assigns(:response))
  end
  
  def test_destroy
    response = Response.first
    delete :destroy, :id => response
    assert_redirected_to responses_url
    assert !Response.exists?(response.id)
  end
end
