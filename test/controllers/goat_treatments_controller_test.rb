require "test_helper"

class GoatTreatmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @goat_treatment = goat_treatments(:one)
  end

  test "should get index" do
    get goat_treatments_url, as: :json
    assert_response :success
  end

  test "should create goat_treatment" do
    assert_difference("GoatTreatment.count") do
      post goat_treatments_url, params: { goat_treatment: { goat_id: @goat_treatment.goat_id, treatment_id: @goat_treatment.treatment_id } }, as: :json
    end

    assert_response :created
  end

  test "should show goat_treatment" do
    get goat_treatment_url(@goat_treatment), as: :json
    assert_response :success
  end

  test "should update goat_treatment" do
    patch goat_treatment_url(@goat_treatment), params: { goat_treatment: { goat_id: @goat_treatment.goat_id, treatment_id: @goat_treatment.treatment_id } }, as: :json
    assert_response :success
  end

  test "should destroy goat_treatment" do
    assert_difference("GoatTreatment.count", -1) do
      delete goat_treatment_url(@goat_treatment), as: :json
    end

    assert_response :no_content
  end
end
