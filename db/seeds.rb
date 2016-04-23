# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([ { name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(name:"Administrator", username:"Admin", password: "password")
User.create(name:"Administrator", username:"admin2", password: "password")

Item.create(name:"Soup of the Day", category:"Appetizer", price: "9", active: true)
Item.create(name:"Mixed Greens Salad", category:"Appetizer", price: "11", active: true)
Item.create(name:"Small Caesar Salad", category:"Appetizer", price: "12", active: true)
Item.create(name:"Guacamole", category:"Appetizer", price: "15", active: true)
Item.create(name:"Steak Tartare", category:"Appetizer", price: "18", active: true)
Item.create(name:"Pan-Seared Jumbo Lump Crab Cake", category:"Appetizer", price: "15", active: true)

Item.create(name:"New York Strip Steak", category:"Entree", price: "35", active: true)
Item.create(name:"Meatloaf", category:"Entree", price: "20", active: true)
Item.create(name:"Grilled Free-Range Chicken", category:"Entree", price: "24", active: true)
Item.create(name:"Roasted Pork Chop", category:"Entree", price: "26", active: true)
Item.create(name:"Pan-roasted Aurora Salmon", category:"Entree", price: "29", active: true)
Item.create(name:"Thai Vegetable Stew", category:"Entree", price: "20", active: true)
Item.create(name:"Hamburger", category:"Entree", price: "15", active: true)
Item.create(name:"New England Lobster and Crab Roll", category:"Entree", price: "23", active: true)
Item.create(name:"La Scala Salad", category:"Entree", price: "19", active: true)

Item.create(name:"French Fries", category:"Side", price: "8", active: true)
Item.create(name:"Mashed Potatoes", category:"Side", price: "8", active: true)
Item.create(name:"Sauteed Spinach", category:"Side", price: "8", active: true)
Item.create(name:"Roasted Cauliflower", category:"Side", price: "8", active: true)


Item.create(name:"Hot Fudge Pudding Cake", category:"Dessert", price: "10", active: true)
Item.create(name:"Chocolate Chip Cookies", category:"Dessert", price: "9", active: true)
Item.create(name:"Warm Applie Crumb Pie", category:"Dessert", price: "9", active: true)
Item.create(name:"Ice Cream", category:"Dessert", price: "8", active: true)
Item.create(name:"Lemon Cheesecake", category:"Dessert", price: "9", active: true)

Item.create(name:"Pinot Grigio", category:"Beverage", price: "11", active: true)
Item.create(name:"Chardonay", category:"Beverage", price: "12", active: true)
Item.create(name:"Sauvignon Blanc", category:"Beverage", price: "13", active: true)
Item.create(name:"Malbec", category:"Beverage", price: "11", active: true)
Item.create(name:"Merlot", category:"Beverage", price: "12", active: true)
Item.create(name:"Pinot Noir", category:"Beverage", price: "13", active: true)
Item.create(name:"Rose", category:"Beverage", price: "12", active: true)
Item.create(name:"Coca-Cola", category:"Beverage", price: "3", active: true)
Item.create(name:"Diet Coca-Cola", category:"Beverage", price: "3", active: true)
Item.create(name:"Ginger Ale", category:"Beverage", price: "3", active: true)
Item.create(name:"Imported Beer", category:"Beverage", price: "8", active: true)
Item.create(name:"Draft Beer", category:"Beverage", price: "8", active: true)
Item.create(name:"Lemonade", category:"Beverage", price: "4", active: true)
Item.create(name:"Tea", category:"Beverage", price: "3", active: true)
Item.create(name:"Coffee", category:"Beverage", price: "4", active: true)
