require "application_system_test_case"

class ProfessoresTest < ApplicationSystemTestCase
  setup do
    @professor = professores(:one)
  end

  test "visiting the index" do
    visit professores_url
    assert_selector "h1", text: "Professores"
  end

  test "creating a Professor" do
    visit professores_url
    click_on "New Professor"

    fill_in "Foto", with: @professor.foto
    fill_in "Nome", with: @professor.nome
    fill_in "Sobre", with: @professor.sobre
    click_on "Create Professor"

    assert_text "Professor was successfully created"
    click_on "Back"
  end

  test "updating a Professor" do
    visit professores_url
    click_on "Edit", match: :first

    fill_in "Foto", with: @professor.foto
    fill_in "Nome", with: @professor.nome
    fill_in "Sobre", with: @professor.sobre
    click_on "Update Professor"

    assert_text "Professor was successfully updated"
    click_on "Back"
  end

  test "destroying a Professor" do
    visit professores_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Professor was successfully destroyed"
  end
end
