class Seed

  def self.begin
    seed = Seed.new
    seed.generate_businesses
  end

  def generate_businesses
    20.times do |i|
      business = Business.create!(
        name: Faker::Restaurant.name,
        kind: Faker::Restaurant.type,
        content: Faker::Restaurant.description
      )
      puts "Business #{i}: Name is #{business.name}, kind is #{business.kind} and content is '#{business.content}'."
    end
  end
end

Seed.begin