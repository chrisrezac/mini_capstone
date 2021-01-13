# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

products = Product.create(
  [
      # {
      # name: "Golf Club", 
      # price: 64, 
      # image_url: "https://images.sidelineswap.com/production/004/005/082/d623893f69caefe4_small.jpeg", 
      # description: "a club used for golfing"
      # },

      {
        name: "Golf Ball", 
        price: 13, 
        image_url: "https://austads.com/pub/media/catalog/product//rdi/rdi/titleist-pro-v1x-refinished-golf-balls-116839-c_1.jpg", 
        description: "a ball used for golfing"
      },

      {
        name: "Golf Tee", 
        price: 4, 
        image_url: "https://target.scene7.com/is/image/Target/GUEST_3d224ccd-9e6f-40da-b6e1-f7fb58ca644a?wid=488&hei=488&fmt=pjpeg", 
        description: "a small piece of wood that you put the golf ball on before hitting it with the golf club"
      },

      {
        name: "Golf Cart", 
        price: 15000, 
        image_url: "https://www.clubcar.com/content/dam/cc-corp/images/Onward/lithium/hp-lithiumr-DF-640x443.jpg", 
        description: "a cart used by golfers to go from one hole to another"
      }
  ]
)
    