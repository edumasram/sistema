require 'test_helper'

class FornecedorCustosControllerTest < ActionController::TestCase
  setup do
    @fornecedor_custo = fornecedor_custos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fornecedor_custos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fornecedor_custo" do
    assert_difference('FornecedorCusto.count') do
      post :create, fornecedor_custo: { data: @fornecedor_custo.data, obs: @fornecedor_custo.obs, preco: @fornecedor_custo.preco, produto_id: @fornecedor_custo.produto_id }
    end

    assert_redirected_to fornecedor_custo_path(assigns(:fornecedor_custo))
  end

  test "should show fornecedor_custo" do
    get :show, id: @fornecedor_custo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fornecedor_custo
    assert_response :success
  end

  test "should update fornecedor_custo" do
    put :update, id: @fornecedor_custo, fornecedor_custo: { data: @fornecedor_custo.data, obs: @fornecedor_custo.obs, preco: @fornecedor_custo.preco, produto_id: @fornecedor_custo.produto_id }
    assert_redirected_to fornecedor_custo_path(assigns(:fornecedor_custo))
  end

  test "should destroy fornecedor_custo" do
    assert_difference('FornecedorCusto.count', -1) do
      delete :destroy, id: @fornecedor_custo
    end

    assert_redirected_to fornecedor_custos_path
  end
end
