FactoryBot.define do
  sequence :email do |n|
    "emailzz#{n}@factory.com"
  end

  factory :user do
    email
    password "foobar"
    first_name "Regular"
    last_name "User"
    admin false
  end
end
