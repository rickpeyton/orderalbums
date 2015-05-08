Fabricator(:brand) do
  name { Faker::Company.name }
  set_standard_price 185
end
