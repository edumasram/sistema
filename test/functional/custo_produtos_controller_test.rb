require 'test_helper'

class CustoProdutosControllerTest < ActionController::TestCase
  setup do
    @custo_produto = custo_produtos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:custo_produtos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create custo_produto" do
    assert_difference('CustoProduto.count') do
      post :create, custo_produto: { custo: @custo_produto.custo, data: @custo_produto.data, produto_id: @custo_produto.produto_id }
    end

    assert_redirected_to custo_produto_path(assigns(:custo_produto))
  end

  test "should show custo_produto" do
    get :show, id: @custo_produto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @custo_produto
    assert_response :success
  end

  test "should update custo_produto" do
    put :update, id: @custo_produto, custo_produto: { custo: @custo_produto.custo, data: @custo_produto.data, produto_id: @custo_produto.produto_id }
    assert_redirected_to custo_produto_path(assigns(:custo_produto))
  end

  test "should destroy custo_produto" do
    assert_difference('CustoProduto.count', -1) do
      delete :destroy, id: @custo_produto
    end

    assert_redirected_to custo_produtos_path
  end
end
