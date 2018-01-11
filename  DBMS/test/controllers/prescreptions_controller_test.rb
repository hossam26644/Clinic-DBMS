require 'test_helper'

class PrescreptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prescreption = prescreptions(:one)
  end

  test "should get index" do
    get prescreptions_url
    assert_response :success
  end

  test "should get new" do
    get new_prescreption_url
    assert_response :success
  end

  test "should create prescreption" do
    assert_difference('Prescreption.count') do
      post prescreptions_url, params: { prescreption: { diagnosis: @prescreption.diagnosis, doctors_comments: @prescreption.doctors_comments, medications: @prescreption.medications, patient_id: @prescreption.patient_id } }
    end

    assert_redirected_to prescreption_url(Prescreption.last)
  end

  test "should show prescreption" do
    get prescreption_url(@prescreption)
    assert_response :success
  end

  test "should get edit" do
    get edit_prescreption_url(@prescreption)
    assert_response :success
  end

  test "should update prescreption" do
    patch prescreption_url(@prescreption), params: { prescreption: { diagnosis: @prescreption.diagnosis, doctors_comments: @prescreption.doctors_comments, medications: @prescreption.medications, patient_id: @prescreption.patient_id } }
    assert_redirected_to prescreption_url(@prescreption)
  end

  test "should destroy prescreption" do
    assert_difference('Prescreption.count', -1) do
      delete prescreption_url(@prescreption)
    end

    assert_redirected_to prescreptions_url
  end
end
