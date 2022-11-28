require "test_helper"

class DiariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @diary = diaries(:one)
  end

  test "should get index" do
    get articles_url
    assert_template :index
    assert_response :success
 
  end

  test "should get new" do
    get new_diary_url
    assert_template :new
    assert_response :success
  end

  test "should create diary" do
    assert_difference('Diary.count') do
      post diaries_url, params: { diary: { fecha: @diary.fecha, horario: @diary.horario, medical_id: @diary.medical_id, pet_id: @diary.pet_id } }
    end

    assert_redirected_to diary_url(Diary.last)
  end

  test "should show diary" do
    get diary_url(@diary)
    assert_response :success
  end

  test "should get edit" do
    get edit_diary_url(@diary)
    assert_response :success
  end

  test "should update diary" do
    patch diary_url(@diary), params: { diary: { fecha: @diary.fecha, horario: @diary.horario, medical_id: @diary.medical_id, pet_id: @diary.pet_id } }
    assert_redirected_to diary_url(@diary)
  end

  test "should destroy diary" do
    assert_difference('Diary.count', -1) do
      delete diary_url(@diary)
    end

    assert_redirected_to diaries_url
  end
end
