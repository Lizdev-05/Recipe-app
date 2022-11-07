# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user = User.create(name: "oyin")
recipe = Recipe.create(name:"Maggi", preparation_time: "5 minutes", cooking_time:"20 minutes", description:"this a maggi", public: true, user_id:user.id)
food = Food.create(name:"tomatos", measurement: "grams",price: 12,quantity: 3, user_id:user.id)
recipe_food = RecipeFood.create(quantity:4, food_id:food.id, recipe_id:recipe.id )