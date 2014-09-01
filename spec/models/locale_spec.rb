require "rails_helper"

describe Locale do
  before do
    @locale = Locale.new(city: "Cadastro Exemplo")
  end

  describe "quando o nome não foi informado" do
    before { @locale.city = "" }
    it { should_not be_valid }
  end

  describe "quando o nome é muito curto" do
    before { @locale.city = "na" }
    it { should_not be_valid }
  end

  describe "quando o nome é muito longo" do
    before { @locale.city = "n" * 50 }
    it { should_not be_valid }
  end

  describe "quando o nome do local já está sendo usado" do
    before do
      locale_with_same_city = @locale.dup
      locale_with_same_city.city = @locale.city
      locale_with_same_city.save
    end

    it { should_not be_valid }
  end

end
