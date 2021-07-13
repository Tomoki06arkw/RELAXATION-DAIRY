FactoryBot.define do
  factory :user do
    name                  {'test'}
    age                   {'43'}
    email                 {'test@example'}
    password              {'000000'}
    password_confirmation {password}
  end
end