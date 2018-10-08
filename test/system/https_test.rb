require "application_system_test_case"

class HttpsTest < ApplicationSystemTestCase
  setup do
    @http = https(:one)
  end

  test "visiting the index" do
    visit https_url
    assert_selector "h1", text: "Https"
  end

  test "creating a Http" do
    visit https_url
    click_on "New Http"

    fill_in "Req", with: @http.req_id
    fill_in "View Method", with: @http.view_method
    fill_in "View Referer", with: @http.view_referer
    fill_in "View Url", with: @http.view_url
    click_on "Create Http"

    assert_text "Http was successfully created"
    click_on "Back"
  end

  test "updating a Http" do
    visit https_url
    click_on "Edit", match: :first

    fill_in "Req", with: @http.req_id
    fill_in "View Method", with: @http.view_method
    fill_in "View Referer", with: @http.view_referer
    fill_in "View Url", with: @http.view_url
    click_on "Update Http"

    assert_text "Http was successfully updated"
    click_on "Back"
  end

  test "destroying a Http" do
    visit https_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Http was successfully destroyed"
  end
end
