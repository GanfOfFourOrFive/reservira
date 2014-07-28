require "rails_helper"

feature "Criando Localidades" do
  scenario "posso criar uma localidade" do
    visit "/"

    click_link "Nova Localidade"

    fill_in "Cidade", with: "Endereço 1"
    fill_in "Endereço", with: "Endereço 1 (um)"
    click_button "Criar localidade"

    expect(page).to have_content("Localidade foi criada.")
  end

end