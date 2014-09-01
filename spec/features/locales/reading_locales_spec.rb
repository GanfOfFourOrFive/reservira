require "rails_helper"

feature "Listando Localidades" do
  before do
    visit locales_path
    expect(page).to have_selector("h2", text: "Cadastro de localidades")
    FactoryGirl.create(:locale)
  end
end
