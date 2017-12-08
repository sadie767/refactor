class Seed
  
Product.destroy_all

  image_list = [
    'https://www.simplyeighties.com/resources/80s%20Shoulder%20Pads.jpg',
    'https://i.pinimg.com/236x/34/da/86/34da86e0890f345652c120edc9298440.jpg',
    'https://i.pinimg.com/736x/06/14/aa/0614aad8580446e4f0740397e5df6b10--s-punk-fashion-s-fashion-trends.jpg',
    'https://i.pinimg.com/736x/34/db/b4/34dbb4cdfde48ed2d240305dd8182222--grace-jones-grace-omalley.jpg'
  ]

  def self.begin
    seed = Seed.new
    seed.generate_products
  end

  def generate_products
    20.times do |i|
      Product.create!(name: Faker::Lorem.word, price: rand(10...100), description: Faker::Lorem.sentence(5, false, 0).chop, image: 'https://i.pinimg.com/736x/34/db/b4/34dbb4cdfde48ed2d240305dd8182222--grace-jones-grace-omalley.jpg')
    end
  end
end

Seed.begin
