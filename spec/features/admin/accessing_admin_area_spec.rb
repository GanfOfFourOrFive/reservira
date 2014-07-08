require "rails_helper" # use rails_helper caso esteja usando rails composer

feature "Acesando a area administrativa" do
  scenario "posso acessar como administrador" do
    visit admin_root_path
  end
end
