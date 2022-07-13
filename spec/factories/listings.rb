FactoryBot.define do
  factory :listing do
    year { 1 }
    month { "MyString" }
    manufacturer { "MyString" }
    model { "MyString" }
    bodytype { "MyString" }
    state { "MyString" }
    odometer { 1 }
    colour { "MyString" }
    condition { 1 }
    seats { 1 }
    doors { 1 }
    sold { false }
    price { 1 }
    description { nil }
    user { nil }
    category { nil }
  end
end
