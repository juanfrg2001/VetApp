require "test_helper"

class HistorialMedicosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @historial_medico = historial_medicos(:one)
  end

  test "should get index" do
    get historial_medicos_url
    assert_response :success
  end

  test "should get new" do
    get new_historial_medico_url
    assert_response :success
  end

  test "should create historial_medico" do
    assert_difference('HistorialMedico.count') do
      post historial_medicos_url, params: { historial_medico: { agenda_id: @historial_medico.agenda_id, cdiagnostico: @historial_medico.cdiagnostico, fecha_consulta: @historial_medico.fecha_consulta, motivo_consulta: @historial_medico.motivo_consulta, tratamiento_seguir: @historial_medico.tratamiento_seguir } }
    end

    assert_redirected_to historial_medico_url(HistorialMedico.last)
  end

  test "should show historial_medico" do
    get historial_medico_url(@historial_medico)
    assert_response :success
  end

  test "should get edit" do
    get edit_historial_medico_url(@historial_medico)
    assert_response :success
  end

  test "should update historial_medico" do
    patch historial_medico_url(@historial_medico), params: { historial_medico: { agenda_id: @historial_medico.agenda_id, cdiagnostico: @historial_medico.cdiagnostico, fecha_consulta: @historial_medico.fecha_consulta, motivo_consulta: @historial_medico.motivo_consulta, tratamiento_seguir: @historial_medico.tratamiento_seguir } }
    assert_redirected_to historial_medico_url(@historial_medico)
  end

  test "should destroy historial_medico" do
    assert_difference('HistorialMedico.count', -1) do
      delete historial_medico_url(@historial_medico)
    end

    assert_redirected_to historial_medicos_url
  end
end
