require "rails_helper"

feature "Criando Categorias" do
  scenario "posso criar uma categoria" do
    visit "/"

    click_link "Nova Categoria"

    fill_in "Nome", with: "Categoria 1"
    click_button "Criar categoria"

    expect(page).to have_content("Categoria foi criada.")
  end
end
