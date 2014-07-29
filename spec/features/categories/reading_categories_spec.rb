   require "rails_helper"

  feature "Listando Categorias" do
    before do
      visit categories_path
      expect(page).to have_selector('h2', text: 'Cadastro de categorias')
    end

    scenario "listando todos os registros cadastrados" do
      @category = FactoryGirl.create(:category)
      expect(page).to have_content(@category.name)
    end
  end