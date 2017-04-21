FactoryGirl.define do
  factory :match do
    date             { Faker::Internet.email }
    matched_user     { Faker::Name.first_name}
    user             { build(:user) }
  end
end
