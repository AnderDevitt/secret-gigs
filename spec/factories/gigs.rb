FactoryBot.define do
  factory :gig do
    name { "MyString" }
    date { "2022-02-25" }
    area { "MyString" }
    tickets { 1 }
    price { 1.5 }
    user { nil }
  end
end
