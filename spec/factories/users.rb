FactoryGirl.define do
  factory :user do
    name "Test User"
    email "test@example.com"
    password "please123"
  end

  factory :confirmed_user, parent: :user do
    after(:create) { |user| user.confirm! }
  end

  factory :admin_user, parent: :confirmed_user do
    role :admin
  end
end
