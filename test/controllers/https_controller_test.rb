require 'test_helper'

class HttpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @http = https(:one)
  end

  test "should get index" do
    get https_url
    assert_response :success
  end

  test "should get new" do
    get new_http_url
    assert_response :success
  end

  test "should create http" do
    assert_difference('Http.count') do
      post https_url, params: { http: { req_id: @http.req_id, view_method: @http.view_method, view_referer: @http.view_referer, view_url: @http.view_url } }
    end

    assert_redirected_to http_url(Http.last)
  end

  test "should show http" do
    get http_url(@http)
    assert_response :success
  end

  test "should get edit" do
    get edit_http_url(@http)
    assert_response :success
  end

  test "should update http" do
    patch http_url(@http), params: { http: { req_id: @http.req_id, view_method: @http.view_method, view_referer: @http.view_referer, view_url: @http.view_url } }
    assert_redirected_to http_url(@http)
  end

  test "should destroy http" do
    assert_difference('Http.count', -1) do
      delete http_url(@http)
    end

    assert_redirected_to https_url
  end
end
