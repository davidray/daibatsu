require 'test_helper'

class PunishmentsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Punishment.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Punishment.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Punishment.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to punishment_url(assigns(:punishment))
  end
  
  def test_edit
    get :edit, :id => Punishment.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Punishment.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Punishment.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Punishment.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Punishment.first
    assert_redirected_to punishment_url(assigns(:punishment))
  end
  
  def test_destroy
    punishment = Punishment.first
    delete :destroy, :id => punishment
    assert_redirected_to punishments_url
    assert !Punishment.exists?(punishment.id)
  end
end
