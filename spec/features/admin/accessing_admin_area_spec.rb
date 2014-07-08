require "rails_helper" # use rails_helper caso esteja usando rails composer

feature "Acesando a area administrativa" do
  scenario "posso acessar como administrador" do
    user = FactoryGirl.create(:confirmed_user)
    signin(user.email, user.password)

    visit admin_root_path

    expect(page).to have_content("Área administrativa")
  end
end
