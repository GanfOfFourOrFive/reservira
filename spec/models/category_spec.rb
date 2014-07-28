require "rails_helper"

  describe Category do
    before do
      @category = Category.new(name: "Nova categoria.")
    end

    describe "quando o nome não foi informado" do
      before { @category.name = ""}
      it { should_not be_valid }
    end

    describe "quando o nome é muito curto" do
      before { @category.name = "na"}
      it { should_not be_valid }
    end

    describe "quando o nome é muito longo" do
      before { @category.name = "n" * 50}
      it { should_not be_valid }
    end

  describe "quando o nome de categoria já está sendo usado" do
    before do
      category_with_same_name = @category.dup
      category_with_same_name.name = @category.name
      category_with_same_name.save
    end

    it { should_not be_valid }
  end

end
