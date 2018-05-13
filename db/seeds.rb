# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.delete_all
Order.delete_all

Product.create(
  [
    {
      name: "Super Fast Bike",
      description: "A fast bike!",
      image_url: "http://media.istockphoto.com/photos/kitten-on-a-white-background-picture-id511458158?k=6&m=511458158&s=170667a&w=0&h=YS27-I0nj5x89iDRUZ2YxE77hEghPb0HNCWwPCrMmn8=",
      color: "red",
      price: 10
    },
    {
      name: "Super Cool Bike",
      description: "A cool bike!",
      image_url: "http://media.istockphoto.com/photos/kitten-on-a-white-background-picture-id511458158?k=6&m=511458158&s=170667a&w=0&h=YS27-I0nj5x89iDRUZ2YxE77hEghPb0HNCWwPCrMmn8=",
      color: "blue",
      price: 20
    },
    {
      name: "Super Green Bike",
      description: "A green bike!",
      image_url: "http://media.istockphoto.com/photos/kitten-on-a-white-background-picture-id511458158?k=6&m=511458158&s=170667a&w=0&h=YS27-I0nj5x89iDRUZ2YxE77hEghPb0HNCWwPCrMmn8=",
      color: "purple",
      price: 103
    }
  ]
)

Order.create(
  user_id: 1,
  product_id: 13,
  total: 20
)
# t.integer "user_id"
# t.integer "product_id"
# t.float "total"
# t.index ["product_id"], name: "index_orders_on_product_id"
# t.index ["user_id"], name: "index_orders_on_user_id"
