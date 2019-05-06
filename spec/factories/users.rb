FactoryBot.define do
  factory :user do
    sequence(:name) { |n| "Sulman Baig #{n}" }
    sequence(:email) { |n| "sbaig#{n}@gmail.com" }
    sequence(:username) { |n| "sulmanweb#{n}" }
    bio { 'Hello World' }
    password { 'abcd@1234' }
  end
end
