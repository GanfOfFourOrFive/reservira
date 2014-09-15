require "rails_helper"

feature "Criando Categorias" do
  before do
    visit categories_path
    click_link "Novo"
  end

  scenario "posso criar uma categoria" do
    fill_in "Nome", with: "Categoria 1"
    click_button "Salvar categoria"

    expect(page).to have_content("Categoria foi criada.")
  end

  scenario "com nome inválido não posso criar uma categoria" do
    fill_in 'Nome', with: ''
    click_button 'Salvar categoria'

    expect(page).to have_content('Nome é muito curto (mínimo: 5 caracteres)')
  end

end
