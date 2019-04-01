require 'test_helper'

class AbetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @abet = abets(:one)
  end

  test "should get index" do
    get abets_url
    assert_response :success
  end

  test "should get new" do
    get new_abet_url
    assert_response :success
  end

  test "should create abet" do
    assert_difference('Abet.count') do
      post abets_url, params: { abet: { acceptable: @abet.acceptable, description: @abet.description, exceeds: @abet.exceeds, poor: @abet.poor } }
    end

    assert_redirected_to abet_url(Abet.last)
  end

  test "should show abet" do
    get abet_url(@abet)
    assert_response :success
  end

  test "should get edit" do
    get edit_abet_url(@abet)
    assert_response :success
  end

  test "should update abet" do
    patch abet_url(@abet), params: { abet: { acceptable: @abet.acceptable, description: @abet.description, exceeds: @abet.exceeds, poor: @abet.poor } }
    assert_redirected_to abet_url(@abet)
  end

  test "should destroy abet" do
    assert_difference('Abet.count', -1) do
      delete abet_url(@abet)
    end

    assert_redirected_to abets_url
  end
end
