require "test_helper"

class GoatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @goat = goats(:one)
  end

  test "should get index" do
    get goats_url, as: :json
    assert_response :success
  end

  test "should create goat" do
    assert_difference("Goat.count") do
      post goats_url, params: { goat: { name: @goat.name } }, as: :json
    end

    assert_response :created
  end

  test "should show goat" do
    get goat_url(@goat), as: :json
    assert_response :success
  end

  test "should update goat" do
    patch goat_url(@goat), params: { goat: { name: @goat.name } }, as: :json
    assert_response :success
  end

  test "should destroy goat" do
    assert_difference("Goat.count", -1) do
      delete goat_url(@goat), as: :json
    end

    assert_response :no_content
  end
end
