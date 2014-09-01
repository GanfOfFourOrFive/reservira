require "rails_helper"

feature "Listando Localidades" do

  before do
    visit locales_path
    expect(page).to have_selector('h2', text: 'Cadastro de localidades')
  end

  scenario "listando todos os registros cadastrados" do
    locale = FactoryGirl.create(:locale)
    expect(page).to have_content(locale.city)
  end
end
