require "test_helper"

class Test2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @test2 = test2s(:one)
  end

  test "should get index" do
    get test2s_url
    assert_response :success
  end

  test "should get new" do
    get new_test2_url
    assert_response :success
  end

  test "should create test2" do
    assert_difference('Test2.count') do
      post test2s_url, params: { test2: { location_id: @test2.location_id, responsible_id: @test2.responsible_id, species_id: @test2.species_id } }
    end

    assert_redirected_to test2_url(Test2.last)
  end

  test "should show test2" do
    get test2_url(@test2)
    assert_response :success
  end

  test "should get edit" do
    get edit_test2_url(@test2)
    assert_response :success
  end

  test "should update test2" do
    patch test2_url(@test2), params: { test2: { location_id: @test2.location_id, responsible_id: @test2.responsible_id, species_id: @test2.species_id } }
    assert_redirected_to test2_url(@test2)
  end

  test "should destroy test2" do
    assert_difference('Test2.count', -1) do
      delete test2_url(@test2)
    end

    assert_redirected_to test2s_url
  end
end
