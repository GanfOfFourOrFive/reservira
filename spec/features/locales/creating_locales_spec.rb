require "rails_helper"

feature "Criando Localidades" do
  before do
    visit "/"
    click_link "Nova Localidade"
  end

  scenario "posso criar uma localidade" do
    click_link "Nova Localidade"

    fill_in "Cidade", with: "Endereço 1"
    fill_in "Endereço", with: "Endereço 1 (um)"
    click_button "Criar localidade"

    expect(page).to have_content("Localidade foi criada.")
  end

end


feature "Listando Localidades" do
  scenario "listando todos os registros cadastrados" do
    visit locales_path

    expect(page).to have_selector('h2', text: 'Cadastro de localidades')
  end
end
