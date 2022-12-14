require "application_system_test_case"

class Test2sTest < ApplicationSystemTestCase
  setup do
    @test2 = test2s(:one)
  end

  test "visiting the index" do
    visit test2s_url
    assert_selector "h1", text: "Test2s"
  end

  test "creating a Test2" do
    visit test2s_url
    click_on "New Test2"

    fill_in "Location", with: @test2.location_id
    fill_in "Responsible", with: @test2.responsible_id
    fill_in "Species", with: @test2.species_id
    click_on "Create Test2"

    assert_text "Test2 was successfully created"
    click_on "Back"
  end

  test "updating a Test2" do
    visit test2s_url
    click_on "Edit", match: :first

    fill_in "Location", with: @test2.location_id
    fill_in "Responsible", with: @test2.responsible_id
    fill_in "Species", with: @test2.species_id
    click_on "Update Test2"

    assert_text "Test2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Test2" do
    visit test2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Test2 was successfully destroyed"
  end
end
