require 'test_helper'

class PatientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patient = patients(:one)
  end

  test "should get index" do
    get patients_url
    assert_response :success
  end

  test "should get new" do
    get new_patient_url
    assert_response :success
  end

  test "should create patient" do
    assert_difference('Patient.count') do
      post patients_url, params: { patient: { p_address_string: @patient.p_address_string, p_age: @patient.p_age, p_birthdate: @patient.p_birthdate, p_complain: @patient.p_complain, p_fname: @patient.p_fname, p_lname: @patient.p_lname, p_minit: @patient.p_minit, p_phonenume: @patient.p_phonenume, p_ssn: @patient.p_ssn } }
    end

    assert_redirected_to patient_url(Patient.last)
  end

  test "should show patient" do
    get patient_url(@patient)
    assert_response :success
  end

  test "should get edit" do
    get edit_patient_url(@patient)
    assert_response :success
  end

  test "should update patient" do
    patch patient_url(@patient), params: { patient: { p_address_string: @patient.p_address_string, p_age: @patient.p_age, p_birthdate: @patient.p_birthdate, p_complain: @patient.p_complain, p_fname: @patient.p_fname, p_lname: @patient.p_lname, p_minit: @patient.p_minit, p_phonenume: @patient.p_phonenume, p_ssn: @patient.p_ssn } }
    assert_redirected_to patient_url(@patient)
  end

  test "should destroy patient" do
    assert_difference('Patient.count', -1) do
      delete patient_url(@patient)
    end

    assert_redirected_to patients_url
  end
end
