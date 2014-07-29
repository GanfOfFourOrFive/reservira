# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :table do
    description "MyString"
    slots 1
    reserved false
    company "MyString"
  end
end
