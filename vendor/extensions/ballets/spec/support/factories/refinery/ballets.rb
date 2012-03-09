
FactoryGirl.define do
  factory :ballet, :class => Refinery::Ballets::Ballet do
    sequence(:title) { |n| "refinery#{n}" }
  end
end

