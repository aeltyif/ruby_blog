FactoryGirl.define do
  factory :post do
    # association :user, factory: :user
    title 'Grill Title'
    body 'Grill Body Description'
    user
  end
end
