require "application_system_test_case"

class MedicalHistoriesTest < ApplicationSystemTestCase
  setup do
    @medical_history = medical_histories(:one)
  end

  test "visiting the index" do
    visit medical_histories_url
    assert_selector "h1", text: "Medical Histories"
  end

  test "creating a Medical history" do
    visit medical_histories_url
    click_on "New Medical History"

    fill_in "Cdiagnostico", with: @medical_history.cdiagnostico
    fill_in "Diary", with: @medical_history.diary_id
    fill_in "Fecha consulta", with: @medical_history.fecha_consulta
    fill_in "Motivo consulta", with: @medical_history.motivo_consulta
    fill_in "Tratamiento seguir", with: @medical_history.tratamiento_seguir
    click_on "Create Medical history"

    assert_text "Medical history was successfully created"
    click_on "Back"
  end

  test "updating a Medical history" do
    visit medical_histories_url
    click_on "Edit", match: :first

    fill_in "Cdiagnostico", with: @medical_history.cdiagnostico
    fill_in "Diary", with: @medical_history.diary_id
    fill_in "Fecha consulta", with: @medical_history.fecha_consulta
    fill_in "Motivo consulta", with: @medical_history.motivo_consulta
    fill_in "Tratamiento seguir", with: @medical_history.tratamiento_seguir
    click_on "Update Medical history"

    assert_text "Medical history was successfully updated"
    click_on "Back"
  end

  test "destroying a Medical history" do
    visit medical_histories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Medical history was successfully destroyed"
  end
end
