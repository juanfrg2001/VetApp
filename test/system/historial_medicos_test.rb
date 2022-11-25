require "application_system_test_case"

class HistorialMedicosTest < ApplicationSystemTestCase
  setup do
    @historial_medico = historial_medicos(:one)
  end

  test "visiting the index" do
    visit historial_medicos_url
    assert_selector "h1", text: "Historial Medicos"
  end

  test "creating a Historial medico" do
    visit historial_medicos_url
    click_on "New Historial Medico"

    fill_in "Agenda", with: @historial_medico.agenda_id
    fill_in "Cdiagnostico", with: @historial_medico.cdiagnostico
    fill_in "Fecha consulta", with: @historial_medico.fecha_consulta
    fill_in "Motivo consulta", with: @historial_medico.motivo_consulta
    fill_in "Tratamiento seguir", with: @historial_medico.tratamiento_seguir
    click_on "Create Historial medico"

    assert_text "Historial medico was successfully created"
    click_on "Back"
  end

  test "updating a Historial medico" do
    visit historial_medicos_url
    click_on "Edit", match: :first

    fill_in "Agenda", with: @historial_medico.agenda_id
    fill_in "Cdiagnostico", with: @historial_medico.cdiagnostico
    fill_in "Fecha consulta", with: @historial_medico.fecha_consulta
    fill_in "Motivo consulta", with: @historial_medico.motivo_consulta
    fill_in "Tratamiento seguir", with: @historial_medico.tratamiento_seguir
    click_on "Update Historial medico"

    assert_text "Historial medico was successfully updated"
    click_on "Back"
  end

  test "destroying a Historial medico" do
    visit historial_medicos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Historial medico was successfully destroyed"
  end
end
