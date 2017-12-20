class Seed
  def self.begin
    Park.destroy_all
    seed = Seed.new
    seed.generate_parks
  end

  def generate_parks
    20.times do |i|
      park = Park.create!(
        park_name: Faker::Name.last_name + ' Park',
        location: Faker::Address.city
      )
    end
  end
end

Seed.begin
