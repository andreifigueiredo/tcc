require "application_system_test_case"

class RequisicaosTest < ApplicationSystemTestCase
  setup do
    @requisicao = requisicaos(:one)
  end

  test "visiting the index" do
    visit requisicaos_url
    assert_selector "h1", text: "Requisicaos"
  end

  test "creating a Requisicao" do
    visit requisicaos_url
    click_on "New Requisicao"

    fill_in "Acao", with: @requisicao.acao_id
    fill_in "Req Agent", with: @requisicao.req_agent
    fill_in "Req Encode", with: @requisicao.req_encode
    click_on "Create Requisicao"

    assert_text "Requisicao was successfully created"
    click_on "Back"
  end

  test "updating a Requisicao" do
    visit requisicaos_url
    click_on "Edit", match: :first

    fill_in "Acao", with: @requisicao.acao_id
    fill_in "Req Agent", with: @requisicao.req_agent
    fill_in "Req Encode", with: @requisicao.req_encode
    click_on "Update Requisicao"

    assert_text "Requisicao was successfully updated"
    click_on "Back"
  end

  test "destroying a Requisicao" do
    visit requisicaos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Requisicao was successfully destroyed"
  end
end
