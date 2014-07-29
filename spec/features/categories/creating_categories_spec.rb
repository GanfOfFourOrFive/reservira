require "rails_helper"

feature "Criando Categorias" do
  before do
    visit '/'
    click_link 'Nova Categoria'
  end

  scenario "posso criar uma categoria" do
    visit "/"

    click_link "Nova Categoria"

    fill_in "Nome", with: "Categoria 1"
    click_button "Criar categoria"

    expect(page).to have_content("Categoria foi criada.")
  end

  scenario "com nome inválido não posso criar uma categoria" do
    fill_in 'Nome', with: ''
    click_button 'Criar categoria'

    expect(page).to have_content('Nome é muito curto (mínimo: 5 caracteres)')
  end

  scenario "com descrição inválida não posso criar uma categoria" do
    fill_in 'Nome', with: 'Minha categoria'
    click_button 'Criar categoria'

    expect(page).to have_content('Descrição é muito curto (mínimo: 15 caracteres)')
  end

  feature "Listando Categorias" do

    before do
      visit products_path
      expect(page).to have_selector('h2', text: 'Cadastro de categorias')
    end

    scenario "listando todos os registros cadastrados" do

    end
  end

end
