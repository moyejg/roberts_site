require 'test_helper'

class ListservsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @listserv = listservs(:one)
  end

  test "should get index" do
    get listservs_url
    assert_response :success
  end

  test "should get new" do
    get new_listserv_url
    assert_response :success
  end

  test "should create listserv" do
    assert_difference('Listserv.count') do
      post listservs_url, params: { listserv: { email: @listserv.email } }
    end

    assert_redirected_to listserv_url(Listserv.last)
  end

  test "should show listserv" do
    get listserv_url(@listserv)
    assert_response :success
  end

  test "should get edit" do
    get edit_listserv_url(@listserv)
    assert_response :success
  end

  test "should update listserv" do
    patch listserv_url(@listserv), params: { listserv: { email: @listserv.email } }
    assert_redirected_to listserv_url(@listserv)
  end

  test "should destroy listserv" do
    assert_difference('Listserv.count', -1) do
      delete listserv_url(@listserv)
    end

    assert_redirected_to listservs_url
  end
end
