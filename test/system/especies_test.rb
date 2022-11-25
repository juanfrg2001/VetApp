require "application_system_test_case"

class EspeciesTest < ApplicationSystemTestCase
  setup do
    @especy = especies(:one)
  end

  test "visiting the index" do
    visit especies_url
    assert_selector "h1", text: "Especies"
  end

  test "creating a Especy" do
    visit especies_url
    click_on "New Especy"

    fill_in "Edad", with: @especy.edad
    fill_in "Esterilizado", with: @especy.esterilizado
    fill_in "Genero", with: @especy.genero
    fill_in "Raza", with: @especy.raza
    click_on "Create Especy"

    assert_text "Especy was successfully created"
    click_on "Back"
  end

  test "updating a Especy" do
    visit especies_url
    click_on "Edit", match: :first

    fill_in "Edad", with: @especy.edad
    fill_in "Esterilizado", with: @especy.esterilizado
    fill_in "Genero", with: @especy.genero
    fill_in "Raza", with: @especy.raza
    click_on "Update Especy"

    assert_text "Especy was successfully updated"
    click_on "Back"
  end

  test "destroying a Especy" do
    visit especies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Especy was successfully destroyed"
  end
end
