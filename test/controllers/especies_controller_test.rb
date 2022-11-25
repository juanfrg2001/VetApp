require "test_helper"

class EspeciesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @especy = especies(:one)
  end

  test "should get index" do
    get especies_url
    assert_response :success
  end

  test "should get new" do
    get new_especy_url
    assert_response :success
  end

  test "should create especy" do
    assert_difference('Especy.count') do
      post especies_url, params: { especy: { edad: @especy.edad, esterilizado: @especy.esterilizado, genero: @especy.genero, raza: @especy.raza } }
    end

    assert_redirected_to especy_url(Especy.last)
  end

  test "should show especy" do
    get especy_url(@especy)
    assert_response :success
  end

  test "should get edit" do
    get edit_especy_url(@especy)
    assert_response :success
  end

  test "should update especy" do
    patch especy_url(@especy), params: { especy: { edad: @especy.edad, esterilizado: @especy.esterilizado, genero: @especy.genero, raza: @especy.raza } }
    assert_redirected_to especy_url(@especy)
  end

  test "should destroy especy" do
    assert_difference('Especy.count', -1) do
      delete especy_url(@especy)
    end

    assert_redirected_to especies_url
  end
end
