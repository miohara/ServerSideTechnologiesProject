require 'test_helper'

class GuitarcatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @guitarcat = guitarcats(:one)
  end

  test "should get index" do
    get guitarcats_url
    assert_response :success
  end

  test "should get new" do
    get new_guitarcat_url
    assert_response :success
  end

  test "should create guitarcat" do
    assert_difference('Guitarcat.count') do
      post guitarcats_url, params: { guitarcat: { description: @guitarcat.description, image: @guitarcat.image, title: @guitarcat.title } }
    end

    assert_redirected_to guitarcat_url(Guitarcat.last)
  end

  test "should show guitarcat" do
    get guitarcat_url(@guitarcat)
    assert_response :success
  end

  test "should get edit" do
    get edit_guitarcat_url(@guitarcat)
    assert_response :success
  end

  test "should update guitarcat" do
    patch guitarcat_url(@guitarcat), params: { guitarcat: { description: @guitarcat.description, image: @guitarcat.image, title: @guitarcat.title } }
    assert_redirected_to guitarcat_url(@guitarcat)
  end

  test "should destroy guitarcat" do
    assert_difference('Guitarcat.count', -1) do
      delete guitarcat_url(@guitarcat)
    end

    assert_redirected_to guitarcats_url
  end
end
