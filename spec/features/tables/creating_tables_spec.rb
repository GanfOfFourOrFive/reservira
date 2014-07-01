require 'rails_helper' # use ‘rails_helper’ caso esteja usando rails composer

feature 'Criando Mesas' do
  scenario "posso criar uma mesa" do
    visit '/'

    click_link 'Nova Mesa'

    fill_in 'Descrição', with: 'Mesa grande mármore'
    fill_in 'Lugares', with: '6'
    fill_in 'Empresa', with: 'Villa Grill'
    click_button 'Salvar Mesa'

    expect(page).to have_content('Mesa salva.')
  end
end
