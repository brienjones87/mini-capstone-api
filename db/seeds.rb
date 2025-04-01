require "ffaker"

puts "Going to seed the database..."

CartedProduct.destroy_all
User.destroy_all
Category.destroy_all
CategoryProduct.destroy_all
Product.destroy_all
Supplier.destroy_all
Image.destroy_all
Order.destroy_all

Category.create(name: "Stuff")

User.create(name: "Mr McGiblets", email: "mrmcg@example.com", password: "password", admin: true)

Order.create(user_id: 1, subtotal: 10, tax: 1, total: 11)

# index_supplier = 0
# while index_supplier < 2
Supplier.create(name: FFaker::Product.product, email: FFaker::Internet.email, phone_number: FFaker::PhoneNumber.short_phone_number)
#   index_supplier += 1
# end

index_product = 0
while index_product < 10
  Product.create(name: FFaker::Product.product, price: FFaker::Number.between(from: 1, to: 100), description: FFaker::Tweet.body, supplier_id: Supplier.first.id)
  index_product += 1
end

CartedProduct.create(product_id: 1, order_id: 1, user_id: 1, status: "carted", quantity: 8)
CartedProduct.create(product_id: 2, order_id: 1, user_id: 1, status: "carted", quantity: 4)

CategoryProduct.create(product_id: Product.ids.sample, category_id: Category.ids.sample)
CategoryProduct.create(product_id: Product.ids.sample, category_id: Category.ids.sample)

index_image = 0
while index_image < 30
  Image.create(product_id: Product.ids.sample, url: FFaker::Image.url)
  index_image += 1
end

puts "Done!"
