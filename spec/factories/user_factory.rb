FactoryBot.define do
  sequence(:email) {|n| "test#{n}@example.com"}
  factory :user do
    email 
    password "1234567890"
    first_name "Peter"
    last_name "Müller"
    admin false
  end
end