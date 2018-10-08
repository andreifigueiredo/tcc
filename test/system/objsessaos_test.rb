require "application_system_test_case"

class ObjsessaosTest < ApplicationSystemTestCase
  setup do
    @objsessao = objsessaos(:one)
  end

  test "visiting the index" do
    visit objsessaos_url
    assert_selector "h1", text: "Objsessaos"
  end

  test "creating a Objsessao" do
    visit objsessaos_url
    click_on "New Objsessao"

    fill_in "Obj Text", with: @objsessao.obj_text
    fill_in "Sessao", with: @objsessao.sessao_id
    click_on "Create Objsessao"

    assert_text "Objsessao was successfully created"
    click_on "Back"
  end

  test "updating a Objsessao" do
    visit objsessaos_url
    click_on "Edit", match: :first

    fill_in "Obj Text", with: @objsessao.obj_text
    fill_in "Sessao", with: @objsessao.sessao_id
    click_on "Update Objsessao"

    assert_text "Objsessao was successfully updated"
    click_on "Back"
  end

  test "destroying a Objsessao" do
    visit objsessaos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Objsessao was successfully destroyed"
  end
end
