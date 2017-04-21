FactoryGirl.define do
  factory :user do
    name     { Faker::Name.first_name}
    email    { Faker::Internet.email }
    password { Faker::Internet.password }

    trait :admin do
      admin true
    end

    trait :student do
      student false
    end

  end
end
