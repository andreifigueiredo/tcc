require 'test_helper'

class ExcecaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @excecao = excecaos(:one)
  end

  test "should get index" do
    get excecaos_url
    assert_response :success
  end

  test "should get new" do
    get new_excecao_url
    assert_response :success
  end

  test "should create excecao" do
    assert_difference('Excecao.count') do
      post excecaos_url, params: { excecao: { data: @excecao.data, hora: @excecao.hora } }
    end

    assert_redirected_to excecao_url(Excecao.last)
  end

  test "should show excecao" do
    get excecao_url(@excecao)
    assert_response :success
  end

  test "should get edit" do
    get edit_excecao_url(@excecao)
    assert_response :success
  end

  test "should update excecao" do
    patch excecao_url(@excecao), params: { excecao: { data: @excecao.data, hora: @excecao.hora } }
    assert_redirected_to excecao_url(@excecao)
  end

  test "should destroy excecao" do
    assert_difference('Excecao.count', -1) do
      delete excecao_url(@excecao)
    end

    assert_redirected_to excecaos_url
  end
end
