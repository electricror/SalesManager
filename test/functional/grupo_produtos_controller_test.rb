require 'test_helper'

class GrupoProdutosControllerTest < ActionController::TestCase
  setup do
    @grupo_produto = grupo_produtos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grupo_produtos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grupo_produto" do
    assert_difference('GrupoProduto.count') do
      post :create, :grupo_produto => @grupo_produto.attributes
    end

    assert_redirected_to grupo_produto_path(assigns(:grupo_produto))
  end

  test "should show grupo_produto" do
    get :show, :id => @grupo_produto.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @grupo_produto.to_param
    assert_response :success
  end

  test "should update grupo_produto" do
    put :update, :id => @grupo_produto.to_param, :grupo_produto => @grupo_produto.attributes
    assert_redirected_to grupo_produto_path(assigns(:grupo_produto))
  end

  test "should destroy grupo_produto" do
    assert_difference('GrupoProduto.count', -1) do
      delete :destroy, :id => @grupo_produto.to_param
    end

    assert_redirected_to grupo_produtos_path
  end
end
