require 'test_helper'

class ObjsessaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @objsessao = objsessaos(:one)
  end

  test "should get index" do
    get objsessaos_url
    assert_response :success
  end

  test "should get new" do
    get new_objsessao_url
    assert_response :success
  end

  test "should create objsessao" do
    assert_difference('Objsessao.count') do
      post objsessaos_url, params: { objsessao: { obj_text: @objsessao.obj_text, sessao_id: @objsessao.sessao_id } }
    end

    assert_redirected_to objsessao_url(Objsessao.last)
  end

  test "should show objsessao" do
    get objsessao_url(@objsessao)
    assert_response :success
  end

  test "should get edit" do
    get edit_objsessao_url(@objsessao)
    assert_response :success
  end

  test "should update objsessao" do
    patch objsessao_url(@objsessao), params: { objsessao: { obj_text: @objsessao.obj_text, sessao_id: @objsessao.sessao_id } }
    assert_redirected_to objsessao_url(@objsessao)
  end

  test "should destroy objsessao" do
    assert_difference('Objsessao.count', -1) do
      delete objsessao_url(@objsessao)
    end

    assert_redirected_to objsessaos_url
  end
end
