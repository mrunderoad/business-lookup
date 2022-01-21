FactoryBot.define do 
  factory(:business) do
    name {Faker::Restaurant.name}
    kind {Faker::Restaurant.type}
    content {Faker::Restaurant.description}
  end
end