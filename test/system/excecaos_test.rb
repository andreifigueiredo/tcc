require "application_system_test_case"

class ExcecaosTest < ApplicationSystemTestCase
  setup do
    @excecao = excecaos(:one)
  end

  test "visiting the index" do
    visit excecaos_url
    assert_selector "h1", text: "Excecaos"
  end

  test "creating a Excecao" do
    visit excecaos_url
    click_on "New Excecao"

    fill_in "Data", with: @excecao.data
    fill_in "Hora", with: @excecao.hora
    click_on "Create Excecao"

    assert_text "Excecao was successfully created"
    click_on "Back"
  end

  test "updating a Excecao" do
    visit excecaos_url
    click_on "Edit", match: :first

    fill_in "Data", with: @excecao.data
    fill_in "Hora", with: @excecao.hora
    click_on "Update Excecao"

    assert_text "Excecao was successfully updated"
    click_on "Back"
  end

  test "destroying a Excecao" do
    visit excecaos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Excecao was successfully destroyed"
  end
end
