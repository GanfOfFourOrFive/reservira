require "rails_helper"

feature "Criando Localidades" do
  before do
    visit locales_path
    click_link "Nova localidade"
  end

  scenario "posso criar uma localidade" do
    fill_in "Cidade", with: "Endereço 1"
    fill_in "Endereço", with: "Endereço 1 (um)"
    click_button "Salvar localidade"

    expect(page).to have_content("Localidade foi criada.")
  end
end
