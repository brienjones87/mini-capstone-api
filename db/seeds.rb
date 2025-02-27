require "ffaker"

puts "Going to seed the database..."

Product.destroy_all
Supplier.destroy_all
Image.destroy_all

index_supplier = 0
while index_supplier < 2
  Supplier.create(name: FFaker::Product.product, email: FFaker::Internet.email, phone_number: FFaker::PhoneNumber.short_phone_number)
  index_supplier += 1
end

index_product = 0
while index_product < 10
  Product.create(name: FFaker::Product.product, price: FFaker::Number.between(from: 1, to: 100), image_url: FFaker::Internet.http_url, description: FFaker::Tweet.body, supplier_id: Supplier.ids.sample)
  index_product += 1
end

index_image = 0
while index_image < 30
  Image.create(product_id: Product.ids.sample, url: FFaker::Internet.http_url)
  index_image += 1
end

puts "Done!"
