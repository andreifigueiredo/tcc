require "application_system_test_case"

class AcaosTest < ApplicationSystemTestCase
  setup do
    @acao = acaos(:one)
  end

  test "visiting the index" do
    visit acaos_url
    assert_selector "h1", text: "Acaos"
  end

  test "creating a Acao" do
    visit acaos_url
    click_on "New Acao"

    fill_in "Acao Classe", with: @acao.acao_classe
    fill_in "Acao Nome", with: @acao.acao_nome
    fill_in "Exc", with: @acao.exc_id
    click_on "Create Acao"

    assert_text "Acao was successfully created"
    click_on "Back"
  end

  test "updating a Acao" do
    visit acaos_url
    click_on "Edit", match: :first

    fill_in "Acao Classe", with: @acao.acao_classe
    fill_in "Acao Nome", with: @acao.acao_nome
    fill_in "Exc", with: @acao.exc_id
    click_on "Update Acao"

    assert_text "Acao was successfully updated"
    click_on "Back"
  end

  test "destroying a Acao" do
    visit acaos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Acao was successfully destroyed"
  end
end
