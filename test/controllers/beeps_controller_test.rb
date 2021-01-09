require "test_helper"

class BeepsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @beep = beeps(:one)
  end

  test "should get index" do
    get beeps_url
    assert_response :success
  end

  test "should get new" do
    get new_beep_url
    assert_response :success
  end

  test "should create beep" do
    assert_difference('Beep.count') do
      post beeps_url, params: { beep: { author: @beep.author, text: @beep.text } }
    end

    assert_redirected_to beep_url(Beep.last)
  end

  test "should show beep" do
    get beep_url(@beep)
    assert_response :success
  end

  test "should get edit" do
    get edit_beep_url(@beep)
    assert_response :success
  end

  test "should update beep" do
    patch beep_url(@beep), params: { beep: { author: @beep.author, text: @beep.text } }
    assert_redirected_to beep_url(@beep)
  end

  test "should destroy beep" do
    assert_difference('Beep.count', -1) do
      delete beep_url(@beep)
    end

    assert_redirected_to beeps_url
  end
end
