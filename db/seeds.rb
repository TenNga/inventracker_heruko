# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Folder.destroy_all
Product.destroy_all 

u1= User.create(user_name: "KK", first_name: "kevin", last_name: "karma")
u2= User.create(user_name: "LoveEating", first_name: "Pong", last_name: "Max")

f1 = Folder.create(name: "Drinks",user_id: u1.id)
    f2 = Folder.create(name: "Cold Drinks", folder_id: f1.id, user_id: u1.id)
        p1 = Product.create(name: "Coke", image: "image", quantity: 2, price: 1, description: "Coka Cola", note: "Can soda", folder_id: f2.id)
f3 = Folder.create(name: "Supplies", user_id: u1.id);
    f4 = Folder.create(name: "Kitchen", folder_id: f3.id, user_id: u1.id);
    f5 = Folder.create(name: "Restroom", folder_id: f3.id, user_id: u1.id);
        f6 = Folder.create(name: "Cleaning", folder_id: f5.id, user_id: u1.id);
         f7 = Product.create(name: "XYZ remover", image: "image", quantity: 10, price: 50, description: "Clean all the things", note: "20Oz cleaner", folder_id: f6.id)
f8 = Folder.create(name: "Other", user_id: u1.id);
f9 = Folder.create(name: "Food",user_id: u1.id)

# t.string "name"
#     t.string "image"
#     t.integer "quantity"
#     t.integer "price"
#     t.string "description"
#     t.string "note"
#     t.integer "folder_id"