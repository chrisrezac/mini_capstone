Supplier.create!([
  {name: "Jimmy", email: "jimmygolf@gmail.com", phone_number: "5133335467"},
  {name: "Billy", email: "billygolf@gmail.com", phone_number: "4132223567"}
])
Product.create!([
  {name: "Golf Tee", price: "4.0", description: "a small piece of wood that you put the golf ball on before hitting it with the golf club", stock: nil, supplier_id: 2},
  {name: "Golf Cart", price: "15000.0", description: "a cart used by golfers to go from one hole to another", stock: nil, supplier_id: 2},
  {name: "Golf Ball", price: "13.0", description: "a ball used for golfing", stock: nil, supplier_id: 1},
  {name: "Golf Club", price: "64.0", description: "a club used for golfing", stock: nil, supplier_id: 1},
  {name: "New Product", price: "5.0", description: "delete this as practice", stock: nil, supplier_id: 1}
])
Image.create!([
  {url: "https://dealer-cdn.com/MIiOlr/u0XvSy/2019_ICON_Yellow_i40L_Golf_Cart_nadJNw.jpg", product_id: 4},
  {url: "https://media.istockphoto.com/photos/the-golf-club-picture-id489773409?k=6&m=489773409&s=612x612&w=0&h=dfzxdsl3aijNkar9-X4jgcjspjQe7U8EgKpYROV6KTA=", product_id: 1},
  {url: "https://static4.depositphotos.com/1007561/282/i/600/depositphotos_2829666-stock-photo-golf-ball.jpg", product_id: 2},
  {url: "https://thumbs.dreamstime.com/b/red-golf-tee-short-wood-isolated-white-185219148.jpg", product_id: 3},
  {url: "https://ssma1221.cafe24.com/img2/2018/07/11/golf/700.jpg", product_id: 5},
  {url: "https://en.pimg.jp/028/132/130/1/28132130.jpg", product_id: 1},
  {url: "https://media.istockphoto.com/photos/golf-ball-picture-id848607268?k=6&m=848607268&s=612x612&w=0&h=nguHnfz6ixruItNiLM59fXayAGaqzWgFX9-2oJufIvc=", product_id: 2},
  {url: "https://media.istockphoto.com/photos/new-wooden-golf-tee-isolated-against-white-picture-id172989428", product_id: 3},
  {url: "https://dks.scene7.com/is/image/GolfGalaxy/PAOHNAKHACEDGONM-1?qlt=70&wid=600&fmt=pjpeg", product_id: 4},
  {url: "https://cdn3.volusion.com/2fs3o.efnr7/v/vspfiles/photos/ACUSH-TH20APBM-2.jpg?v-cache=1584021220", product_id: 5}
])
Category.create!([
  {name: "Clothing"},
  {name: "Cheap"},
  {name: "Equipment"}
])
ProductCategory.create!([
  {product_id: 1, category_id: 3},
  {product_id: 2, category_id: 2}
])
User.create!([
  {name: "Bob", email: "bob@gmail.com", password_digest: "$2a$12$YSduoSmTVrPSHq.EA7qRK.wwN87HjIOdsEUKBR4uPmNYYZ2Oe1.3C", admin: true},
  {name: "James", email: "james@gmail.com", password_digest: "$2a$12$VyETNSyHIhn6icwnuuuig.sUV5nCM52gg5eSU4W/j7WcJAwSAMaF6", admin: true},
  {name: "Billy", email: "billy@gmail.com", password_digest: "$2a$12$oUe1q9xuA4sehVjLi3OIquqVP0Zrl2C/pQwGk85fhO4GiIbfcpoL2", admin: true}
])

CartedProduct.create!([
  {user_id: 2, product_id: 1, quantity: 5, status: nil, order_id: nil},
  {user_id: 2, product_id: 1, quantity: 5, status: nil, order_id: nil},
  {user_id: 2, product_id: 1, quantity: 5, status: nil, order_id: nil},
  {user_id: 2, product_id: 1, quantity: 5, status: nil, order_id: nil},
])

Order.create!([
  {user_id: 2, subtotal: "64.0", tax: "5.76", total: "69.76"},
  {user_id: 2, subtotal: "64.0", tax: "5.76", total: "69.76"},
  {user_id: 2, subtotal: "64.0", tax: "5.76", total: "69.76"}
])


