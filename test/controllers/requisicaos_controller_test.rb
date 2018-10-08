require 'test_helper'

class RequisicaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @requisicao = requisicaos(:one)
  end

  test "should get index" do
    get requisicaos_url
    assert_response :success
  end

  test "should get new" do
    get new_requisicao_url
    assert_response :success
  end

  test "should create requisicao" do
    assert_difference('Requisicao.count') do
      post requisicaos_url, params: { requisicao: { acao_id: @requisicao.acao_id, req_agent: @requisicao.req_agent, req_encode: @requisicao.req_encode } }
    end

    assert_redirected_to requisicao_url(Requisicao.last)
  end

  test "should show requisicao" do
    get requisicao_url(@requisicao)
    assert_response :success
  end

  test "should get edit" do
    get edit_requisicao_url(@requisicao)
    assert_response :success
  end

  test "should update requisicao" do
    patch requisicao_url(@requisicao), params: { requisicao: { acao_id: @requisicao.acao_id, req_agent: @requisicao.req_agent, req_encode: @requisicao.req_encode } }
    assert_redirected_to requisicao_url(@requisicao)
  end

  test "should destroy requisicao" do
    assert_difference('Requisicao.count', -1) do
      delete requisicao_url(@requisicao)
    end

    assert_redirected_to requisicaos_url
  end
end
