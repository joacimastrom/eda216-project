Customer.create!(name: "Finkakor AB", adress: "Helsingborg")
Customer.create!(name: "Småbröd AB", adress: "Malmö")
Customer.create!(name: "Kaffebröd AB", adress: "Landskrona")
Customer.create!(name: "Bjudkakor AB", adress: "Ystad")
Customer.create!(name: "Kalaskakor AB", adress: "Trellebrg")
Customer.create!(name: "Partykakor AB", adress: "Kristianstad")
Customer.create!(name: "Gästkakor AB", adress: "Hässleholm")
Customer.create!(name: "Skånekakor AB", adress: "Perstorp")

Ingredient.create!(name: "Flour", quantity: 10000)
Ingredient.create!(name: "Butter", quantity: 10000)
Ingredient.create!(name: "Icing sugar", quantity: 10000)
Ingredient.create!(name: "Roasted, chopped nuts", quantity: 10000)
Ingredient.create!(name: "Fine-ground nuts", quantity: 10000)
Ingredient.create!(name: "Ground, roasted nuts", quantity: 10000)
Ingredient.create!(name: "Bread crumbs", quantity: 10000)
Ingredient.create!(name: "Sugar", quantity: 10000)
Ingredient.create!(name: "Egg whites", quantity: 10000)
Ingredient.create!(name: "Chocolate", quantity: 10000)
Ingredient.create!(name: "Marzipan", quantity: 10000)
Ingredient.create!(name: "Eggs", quantity: 10000)
Ingredient.create!(name: "Potato starch", quantity: 10000)
Ingredient.create!(name: "Wheat flour", quantity: 10000)
Ingredient.create!(name: "Sodium bicarbonate", quantity: 10000)
Ingredient.create!(name: "Vanilla", quantity: 10000)
Ingredient.create!(name: "Chopped almonds", quantity: 10000)
Ingredient.create!(name: "Cinnamon", quantity: 10000)
Ingredient.create!(name: "Vanilla sugar", quantity: 10000)

c1 = Cookie.create!(name: "Nut ring")
c1.build_recipe((Ingredient.find_by name: "Flour"), 450)
c1.build_recipe((Ingredient.find_by name: "Butter"), 450 )
c1.build_recipe((Ingredient.find_by name: "Icing sugar"), 190)
c1.build_recipe((Ingredient.find_by name: "Roasted, chopped nuts"), 225 )

c2 = Cookie.create!(name: "Nut cookie")
c2.build_recipe((Ingredient.find_by name: "Fine-ground nuts"), 750 )
c2.build_recipe((Ingredient.find_by name: "Ground, roasted nuts"), 625 )
c2.build_recipe((Ingredient.find_by name: "Bread crumbs"), 125 )
c2.build_recipe((Ingredient.find_by name: "Sugar"), 375 )
c2.build_recipe((Ingredient.find_by name: "Egg whites"), 3.5 )
c2.build_recipe((Ingredient.find_by name: "Chocolate"), 50 )

c3 = Cookie.create!(name: "Amneris")
c3.build_recipe((Ingredient.find_by name: "Marzipan"), 750 )
c3.build_recipe((Ingredient.find_by name: "Butter"), 250 )
c3.build_recipe((Ingredient.find_by name: "Eggs"), 250 )
c3.build_recipe((Ingredient.find_by name: "Potato starch"), 25 )
c3.build_recipe((Ingredient.find_by name: "Wheat flour"), 25 )

c4 = Cookie.create!(name: "Tango")
c4.build_recipe((Ingredient.find_by name: "Butter"), 200 )
c4.build_recipe((Ingredient.find_by name: "Sugar"), 250 )
c4.build_recipe((Ingredient.find_by name: "Flour"), 300 )
c4.build_recipe((Ingredient.find_by name: "Sodium bicarbonate"), 4 )
c4.build_recipe((Ingredient.find_by name: "Vanilla"), 2 )

c5 = Cookie.create!(name: "Almond delight")
c5.build_recipe((Ingredient.find_by name: "Butter"), 400 )
c5.build_recipe((Ingredient.find_by name: "Sugar"), 270 )
c5.build_recipe((Ingredient.find_by name: "Chopped almonds"), 270 )
c5.build_recipe((Ingredient.find_by name: "Flour"), 400 )
c5.build_recipe((Ingredient.find_by name: "Cinnamon"), 10 )

c6 = Cookie.create!(name: "Berliner")
c6.build_recipe((Ingredient.find_by name: "Flour"), 350 )
c6.build_recipe((Ingredient.find_by name: "Butter"), 250 )
c6.build_recipe((Ingredient.find_by name: "Icing sugar"), 100 )
c6.build_recipe((Ingredient.find_by name: "Eggs"), 50 )
c6.build_recipe((Ingredient.find_by name: "Vanilla sugar"), 5 )
c6.build_recipe((Ingredient.find_by name: "Chocolate"), 50 )

Order.create(requested_delivery_date: "2016-04-16", customer_id: 2)
CookieOrder.create(amount: 10, order_id: 1, cookie_id: 5)
CookieOrder.create(amount: 15, order_id: 1, cookie_id: 3)
Pallet.create(order_id: 1, created_at: "2016-04-03", cookie_id: 5)
Pallet.create(order_id: 1, created_at: "2016-03-26", cookie_id: 5)
Pallet.create(order_id: 1, created_at: "2016-04-03", cookie_id: 5)
Pallet.create(order_id: 1, created_at: "2016-04-05", cookie_id: 3)
Pallet.create(order_id: 1, created_at: "2016-03-20", cookie_id: 3)
Pallet.create(order_id: 1, created_at: "2016-03-22", cookie_id: 3)
Pallet.create(order_id: 1, created_at: "2016-04-01", cookie_id: 3)

Order.create(requested_delivery_date: "2016-04-13", customer_id: 5)
CookieOrder.create(amount: 10, order_id: 2, cookie_id: 4)
CookieOrder.create(amount: 8, order_id: 2, cookie_id: 6)
Pallet.create(order_id: 2, created_at: "2016-03-20", cookie_id: 4)
Pallet.create(order_id: 2, created_at: "2016-03-22", cookie_id: 4)
Pallet.create(order_id: 2, created_at: "2016-04-01", cookie_id: 4)
Pallet.create(order_id: 2, created_at: "2016-04-06", cookie_id: 6)
Pallet.create(order_id: 2, created_at: "2016-03-22", cookie_id: 6)
Pallet.create(order_id: 2, created_at: "2016-03-24", cookie_id: 6)


