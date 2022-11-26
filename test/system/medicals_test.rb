require "application_system_test_case"

class MedicalsTest < ApplicationSystemTestCase
  setup do
    @medical = medicals(:one)
  end

  test "visiting the index" do
    visit medicals_url
    assert_selector "h1", text: "Medicals"
  end

  test "creating a Medical" do
    visit medicals_url
    click_on "New Medical"

    fill_in "Direccion residencia", with: @medical.direccion_residencia
    fill_in "Nombre", with: @medical.nombre
    fill_in "Speciality", with: @medical.speciality_id
    fill_in "Telefono", with: @medical.telefono
    click_on "Create Medical"

    assert_text "Medical was successfully created"
    click_on "Back"
  end

  test "updating a Medical" do
    visit medicals_url
    click_on "Edit", match: :first

    fill_in "Direccion residencia", with: @medical.direccion_residencia
    fill_in "Nombre", with: @medical.nombre
    fill_in "Speciality", with: @medical.speciality_id
    fill_in "Telefono", with: @medical.telefono
    click_on "Update Medical"

    assert_text "Medical was successfully updated"
    click_on "Back"
  end

  test "destroying a Medical" do
    visit medicals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Medical was successfully destroyed"
  end
end
