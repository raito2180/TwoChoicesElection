FactoryBot.define do
  factory :user do
    email                 { 'test@yahoo.com' }
    password              { '111111' }
    password_confirmation { '111111' }
  end
end
