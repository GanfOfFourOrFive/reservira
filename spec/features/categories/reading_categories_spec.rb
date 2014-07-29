   require "rails_helper"

  feature "Listando Categorias" do
    scenario "listando todos os registros cadastrados" do
      visit categories_path

      expect(page).to have_selector('h2', text: 'Cadastro de categorias')
    end
  end