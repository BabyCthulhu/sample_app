FactoryGirl.define do
  factory :user do
    name      "Markus K."
    email     "markus@factory.de"
    password  "foobar"
    password_confirmation "foobar"
  end
end
