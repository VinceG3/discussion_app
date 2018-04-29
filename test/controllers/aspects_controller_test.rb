require 'test_helper'

class AspectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aspect = aspects(:one)
  end

  test "should get index" do
    get aspects_url
    assert_response :success
  end

  test "should get new" do
    get new_aspect_url
    assert_response :success
  end

  test "should create aspect" do
    assert_difference('Aspect.count') do
      post aspects_url, params: { aspect: { name: @aspect.name, topic_id: @aspect.topic_id } }
    end

    assert_redirected_to aspect_url(Aspect.last)
  end

  test "should show aspect" do
    get aspect_url(@aspect)
    assert_response :success
  end

  test "should get edit" do
    get edit_aspect_url(@aspect)
    assert_response :success
  end

  test "should update aspect" do
    patch aspect_url(@aspect), params: { aspect: { name: @aspect.name, topic_id: @aspect.topic_id } }
    assert_redirected_to aspect_url(@aspect)
  end

  test "should destroy aspect" do
    assert_difference('Aspect.count', -1) do
      delete aspect_url(@aspect)
    end

    assert_redirected_to aspects_url
  end
end
