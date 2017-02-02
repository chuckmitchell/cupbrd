# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
charles = User.create(name: "Charles", email: "chuckmitchell@gmail.com")

gram = Unit.create(name: "gram", symbol: 'g', measurement_type: "dry")
Unit.create(name: "pinch", symbol: 'pinch', measurement_type: "dry")
ml = Unit.create(name: "milliliter", symbol: 'ml', measurement_type: "liquid")
Unit.create(name: "cup", symbol: 'cp', measurement_type: "liquid")
Unit.create(name: "teaspoon", symbol: 'tsp', measurement_type: "liquid")
Unit.create(name: "tablespoon", symbol: 'tbsp', measurement_type: "liquid")
Unit.create(name: "pieces", symbol: 'pieces', measurement_type: "whole")

food = Food.create(name: "almond extract")
Item.create(user: charles, unit: ml, quantity: 40.00, remaining: 100) 
food = Food.create(name: "anchovy paste")
Item.create(user: charles, unit: ml, quantity: 60.00, remaining: 100) 
food = Food.create(name: "apple cider vinegar")
Item.create(user: charles, unit: ml, quantity: 500.00, remaining: 100) 
food = Food.create(name: "artichoke hearts")
Item.create(user: charles, unit: ml, quantity: 400.00, remaining: 100) 
food = Food.create(name: "baked beans with pork")
Item.create(user: charles, unit: ml, quantity: 398.00, remaining: 100) 
food = Food.create(name: "baking powder")
Item.create(user: charles, unit: ml, quantity: 200.00, remaining: 100) 
food = Food.create(name: "baking soda")
Item.create(user: charles, unit: ml, quantity: 250.00, remaining: 100) 
food = Food.create(name: "balsamic vinegar")
Item.create(user: charles, unit: ml, quantity: 250.00, remaining: 100) 
food = Food.create(name: "barbecue sauce")
Item.create(user: charles, unit: ml, quantity: 100.00, remaining: 100) 
food = Food.create(name: "black bean garlic sauce")
Item.create(user: charles, unit: ml, quantity: 300.00, remaining: 100) 
food = Food.create(name: "blue cheese dressing")
Item.create(user: charles, unit: ml, quantity: 250.00, remaining: 100) 
food = Food.create(name: "blueberries, Frozen")
Item.create(user: charles, unit: ml, quantity: 500.00, remaining: 100) 
food = Food.create(name: "bouillon cubes, chicken")
Item.create(user: charles, unit: ml, quantity: 10.00, remaining: 100) 
Item.create(user: charles, unit: ml, quantity: 10.00, remaining: 100) 
Item.create(user: charles, unit: ml, quantity: 10.00, remaining: 100) 
Item.create(user: charles, unit: ml, quantity: 10.00, remaining: 100) 
Item.create(user: charles, unit: ml, quantity: 10.00, remaining: 100) 
Item.create(user: charles, unit: ml, quantity: 10.00, remaining: 100) 
food = Food.create(name: "bouillon cubes, vegetable")
Item.create(user: charles, unit: ml, quantity: 10.00, remaining: 100) 
Item.create(user: charles, unit: ml, quantity: 10.00, remaining: 100) 
Item.create(user: charles, unit: ml, quantity: 10.00, remaining: 100) 
Item.create(user: charles, unit: ml, quantity: 10.00, remaining: 100) 
Item.create(user: charles, unit: ml, quantity: 10.00, remaining: 100) 
Item.create(user: charles, unit: ml, quantity: 10.00, remaining: 100) 
food = Food.create(name: "butter chicken sauce")
Item.create(user: charles, unit: ml, quantity: 465.00, remaining: 100) 
food = Food.create(name: "cake release")
Item.create(user: charles, unit: ml, quantity: 200.00, remaining: 100) 
food = Food.create(name: "caraway seed")
Item.create(user: charles, unit: ml, quantity: 50.00, remaining: 100) 
food = Food.create(name: "celery salt")
Item.create(user: charles, unit: ml, quantity: 190.00, remaining: 100) 
food = Food.create(name: "cheese, cheddar")
Item.create(user: charles, unit: ml, quantity: 450.00, remaining: 100) 
food = Food.create(name: "cheese, parmesan")
Item.create(user: charles, unit: ml, quantity: 200.00, remaining: 100) 
food = Food.create(name: "chia seeds")
Item.create(user: charles, unit: ml, quantity: 900.00, remaining: 100) 
food = Food.create(name: "chicken leg w/ back, frozen")
Item.create(user: charles, unit: ml, quantity: 350.00, remaining: 100) 
Item.create(user: charles, unit: ml, quantity: 350.00, remaining: 100) 
food = Food.create(name: "chickpeas")
Item.create(user: charles, unit: ml, quantity: 540.00, remaining: 100) 
food = Food.create(name: "chili powder")
Item.create(user: charles, unit: ml, quantity: 20.00, remaining: 100) 
food = Food.create(name: "chutney")
Item.create(user: charles, unit: ml, quantity: 200.00, remaining: 100) 
food = Food.create(name: "coconut milk")
Item.create(user: charles, unit: ml, quantity: 400.00, remaining: 100) 
food = Food.create(name: "coconut oil")
Item.create(user: charles, unit: ml, quantity: 860.00, remaining: 100) 
food = Food.create(name: "coffee")
Item.create(user: charles, unit: ml, quantity: 500.00, remaining: 100) 
food = Food.create(name: "coriander seed")
Item.create(user: charles, unit: ml, quantity: 15.00, remaining: 100) 
food = Food.create(name: "cornstarch")
Item.create(user: charles, unit: ml, quantity: 300.00, remaining: 100) 
food = Food.create(name: "crackers, soda")
Item.create(user: charles, unit: ml, quantity: 450.00, remaining: 100) 
food = Food.create(name: "cranberries, Frozen")
Item.create(user: charles, unit: ml, quantity: 1000.00, remaining: 100) 
food = Food.create(name: "cream")
Item.create(user: charles, unit: ml, quantity: 500.00, remaining: 100) 
food = Food.create(name: "croutons")
Item.create(user: charles, unit: ml, quantity: 200.00, remaining: 100) 
Item.create(user: charles, unit: ml, quantity: 200.00, remaining: 100) 
food = Food.create(name: "crushed bay leaves")
Item.create(user: charles, unit: ml, quantity: 40.00, remaining: 100) 
food = Food.create(name: "cumin")
Item.create(user: charles, unit: ml, quantity: 15.00, remaining: 100) 
food = Food.create(name: "curry powder")
Item.create(user: charles, unit: ml, quantity: 100.00, remaining: 100) 
food = Food.create(name: "diced tomatoes")
Item.create(user: charles, unit: ml, quantity: 796.00, remaining: 100) 
food = Food.create(name: "dill weed")
Item.create(user: charles, unit: ml, quantity: 5.00, remaining: 100) 
food = Food.create(name: "Donair sauce")
Item.create(user: charles, unit: ml, quantity: 200.00, remaining: 100) 
food = Food.create(name: "dried peppers")
Item.create(user: charles, unit: ml, quantity: 1.00, remaining: 100) 
Item.create(user: charles, unit: ml, quantity: 1.00, remaining: 100) 
Item.create(user: charles, unit: ml, quantity: 1.00, remaining: 100) 
Item.create(user: charles, unit: ml, quantity: 1.00, remaining: 100) 
Item.create(user: charles, unit: ml, quantity: 1.00, remaining: 100) 
Item.create(user: charles, unit: ml, quantity: 1.00, remaining: 100) 
Item.create(user: charles, unit: ml, quantity: 1.00, remaining: 100) 
Item.create(user: charles, unit: ml, quantity: 1.00, remaining: 100) 
Item.create(user: charles, unit: ml, quantity: 1.00, remaining: 100) 
Item.create(user: charles, unit: ml, quantity: 1.00, remaining: 100) 
food = Food.create(name: "eggs benedict sauce")
Item.create(user: charles, unit: ml, quantity: 300.00, remaining: 100) 
food = Food.create(name: "Erica's pepper sauce")
Item.create(user: charles, unit: ml, quantity: 300.00, remaining: 100) 
food = Food.create(name: "fennel seed")
Item.create(user: charles, unit: ml, quantity: 20.00, remaining: 100) 
food = Food.create(name: "fish sauce")
Item.create(user: charles, unit: ml, quantity: 100.00, remaining: 100) 
food = Food.create(name: "flour, White")
Item.create(user: charles, unit: ml, quantity: 2270.00, remaining: 100) 
food = Food.create(name: "fresh nutmeg")
Item.create(user: charles, unit: ml, quantity: 1.00, remaining: 100) 
Item.create(user: charles, unit: ml, quantity: 1.00, remaining: 100) 
Item.create(user: charles, unit: ml, quantity: 1.00, remaining: 100) 
food = Food.create(name: "gelatin")
Item.create(user: charles, unit: ml, quantity: 28.00, remaining: 100) 
Item.create(user: charles, unit: ml, quantity: 28.00, remaining: 100) 
Item.create(user: charles, unit: ml, quantity: 28.00, remaining: 100) 
Item.create(user: charles, unit: ml, quantity: 28.00, remaining: 100) 
food = Food.create(name: "ground cinnamon")
Item.create(user: charles, unit: ml, quantity: 50.00, remaining: 100) 
food = Food.create(name: "ground cloves")
Item.create(user: charles, unit: ml, quantity: 45.00, remaining: 100) 
food = Food.create(name: "ground ginger")
Item.create(user: charles, unit: ml, quantity: 32.00, remaining: 100) 
food = Food.create(name: "ground nutmeg")
Item.create(user: charles, unit: ml, quantity: 32.00, remaining: 100) 
food = Food.create(name: "ground pepper")
Item.create(user: charles, unit: ml, quantity: 160.00, remaining: 100) 
food = Food.create(name: "ground savory")
Item.create(user: charles, unit: ml, quantity: 30.00, remaining: 100) 
food = Food.create(name: "ground turmeric")
Item.create(user: charles, unit: ml, quantity: 15.00, remaining: 100) 
food = Food.create(name: "honey")
Item.create(user: charles, unit: ml, quantity: 250.00, remaining: 100) 
food = Food.create(name: "hot sauce, sriracha")
Item.create(user: charles, unit: ml, quantity: 250.00, remaining: 100) 
food = Food.create(name: "instant oatmeal")
Item.create(user: charles, unit: ml, quantity: 50.00, remaining: 100) 
Item.create(user: charles, unit: ml, quantity: 50.00, remaining: 100) 
Item.create(user: charles, unit: ml, quantity: 50.00, remaining: 100) 
Item.create(user: charles, unit: ml, quantity: 50.00, remaining: 100) 
Item.create(user: charles, unit: ml, quantity: 50.00, remaining: 100) 
food = Food.create(name: "jambalaya soup mix")
Item.create(user: charles, unit: ml, quantity: 1.00, remaining: 100) 
food = Food.create(name: "lasagna noodles")
Item.create(user: charles, unit: ml, quantity: 100.00, remaining: 100) 
food = Food.create(name: "lime leaves")
Item.create(user: charles, unit: ml, quantity: 4.00, remaining: 100) 
food = Food.create(name: "limes")
Item.create(user: charles, unit: ml, quantity: 1.00, remaining: 100) 
Item.create(user: charles, unit: ml, quantity: 1.00, remaining: 100) 
food = Food.create(name: "maple syrup")
Item.create(user: charles, unit: ml, quantity: 500.00, remaining: 100) 
food = Food.create(name: "Maritime Seafood rub")
Item.create(user: charles, unit: ml, quantity: 50.00, remaining: 100) 
food = Food.create(name: "mayonnaise")
Item.create(user: charles, unit: ml, quantity: 350.00, remaining: 100) 
food = Food.create(name: "mustard seed")
Item.create(user: charles, unit: ml, quantity: 100.00, remaining: 100) 
food = Food.create(name: "mustard, Dijon")
Item.create(user: charles, unit: ml, quantity: 400.00, remaining: 100) 
food = Food.create(name: "mustard, whole grain")
Item.create(user: charles, unit: ml, quantity: 195.00, remaining: 100) 
food = Food.create(name: "mustard, yellow")
Item.create(user: charles, unit: ml, quantity: 400.00, remaining: 100) 
food = Food.create(name: "onion, white")
Item.create(user: charles, unit: ml, quantity: 1.00, remaining: 100) 
food = Food.create(name: "orange extract")
Item.create(user: charles, unit: ml, quantity: 35.00, remaining: 100) 
food = Food.create(name: "orange juice")
Item.create(user: charles, unit: ml, quantity: 1000.00, remaining: 100) 
food = Food.create(name: "oregano leaves")
Item.create(user: charles, unit: ml, quantity: 12.00, remaining: 100) 
food = Food.create(name: "peanut butter")
Item.create(user: charles, unit: ml, quantity: 500.00, remaining: 100) 
food = Food.create(name: "peas, Frozen")
Item.create(user: charles, unit: ml, quantity: 500.00, remaining: 100) 
food = Food.create(name: "pizza sauce")
Item.create(user: charles, unit: ml, quantity: 375.00, remaining: 100) 
food = Food.create(name: "pizza sauce")
Item.create(user: charles, unit: ml, quantity: 213.00, remaining: 100) 
food = Food.create(name: "pizza, frozen")
Item.create(user: charles, unit: ml, quantity: 834.00, remaining: 100) 
food = Food.create(name: "popcorn")
Item.create(user: charles, unit: ml, quantity: 300.00, remaining: 100) 
food = Food.create(name: "potato")
Item.create(user: charles, unit: ml, quantity: 2000.00, remaining: 100) 
food = Food.create(name: "quinoa")
Item.create(user: charles, unit: ml, quantity: 905.00, remaining: 100) 
food = Food.create(name: "raisins")
Item.create(user: charles, unit: ml, quantity: 500.00, remaining: 100) 
food = Food.create(name: "red pepper flakes")
Item.create(user: charles, unit: ml, quantity: 20.00, remaining: 100) 
food = Food.create(name: "rice noodles")
Item.create(user: charles, unit: ml, quantity: 250.00, remaining: 100) 
food = Food.create(name: "rice paper rolls")
Item.create(user: charles, unit: ml, quantity: 200.00, remaining: 100) 
food = Food.create(name: "rice vinegar")
Item.create(user: charles, unit: ml, quantity: 600.00, remaining: 100) 
food = Food.create(name: "rice, basmati")
Item.create(user: charles, unit: ml, quantity: 750.00, remaining: 100) 
food = Food.create(name: "rice, sticky")
Item.create(user: charles, unit: ml, quantity: 750.00, remaining: 100) 
food = Food.create(name: "rosemary leaves")
Item.create(user: charles, unit: ml, quantity: 20.00, remaining: 100) 
food = Food.create(name: "salt")
Item.create(user: charles, unit: ml, quantity: 500.00, remaining: 100) 
food = Food.create(name: "salt, course")
Item.create(user: charles, unit: ml, quantity: 1360.00, remaining: 100) 
food = Food.create(name: "salt, sea")
Item.create(user: charles, unit: ml, quantity: 500.00, remaining: 100) 
food = Food.create(name: "sardines")
Item.create(user: charles, unit: ml, quantity: 106.00, remaining: 100) 
food = Food.create(name: "seafood snacks")
Item.create(user: charles, unit: ml, quantity: 100.00, remaining: 100) 
Item.create(user: charles, unit: ml, quantity: 100.00, remaining: 100) 
food = Food.create(name: "seaweed sheets")
Item.create(user: charles, unit: ml, quantity: 21.00, remaining: 100) 
food = Food.create(name: "sesame oil")
Item.create(user: charles, unit: ml, quantity: 470.00, remaining: 100) 
food = Food.create(name: "sesame seeds")
Item.create(user: charles, unit: ml, quantity: 400.00, remaining: 100) 
food = Food.create(name: "skim milk powder")
Item.create(user: charles, unit: ml, quantity: 500.00, remaining: 100) 
food = Food.create(name: "sugar, dark brown")
Item.create(user: charles, unit: ml, quantity: 500.00, remaining: 100) 
food = Food.create(name: "sugar, icing")
Item.create(user: charles, unit: ml, quantity: 500.00, remaining: 100) 
Item.create(user: charles, unit: ml, quantity: 500.00, remaining: 100) 
food = Food.create(name: "sugar, stevia")
Item.create(user: charles, unit: ml, quantity: 150.00, remaining: 100) 
food = Food.create(name: "sugar, White")
Item.create(user: charles, unit: ml, quantity: 400.00, remaining: 100) 
food = Food.create(name: "summer savory leaves")
Item.create(user: charles, unit: ml, quantity: 5.00, remaining: 100) 
food = Food.create(name: "sweet potato")
Item.create(user: charles, unit: ml, quantity: 1.00, remaining: 100) 
food = Food.create(name: "thyme leaves")
Item.create(user: charles, unit: ml, quantity: 10.00, remaining: 100) 
food = Food.create(name: "tostadas")
Item.create(user: charles, unit: ml, quantity: 100.00, remaining: 100) 
food = Food.create(name: "tuna")
Item.create(user: charles, unit: ml, quantity: 184.00, remaining: 100) 
Item.create(user: charles, unit: ml, quantity: 184.00, remaining: 100) 
Item.create(user: charles, unit: ml, quantity: 184.00, remaining: 100) 
Item.create(user: charles, unit: ml, quantity: 184.00, remaining: 100) 
food = Food.create(name: "vanilla extract")
Item.create(user: charles, unit: ml, quantity: 15.00, remaining: 100) 
food = Food.create(name: "vermicelli noodles")
Item.create(user: charles, unit: ml, quantity: 500.00, remaining: 100) 
Item.create(user: charles, unit: ml, quantity: 500.00, remaining: 100) 
food = Food.create(name: "Worcester sauce")
Item.create(user: charles, unit: ml, quantity: 284.00, remaining: 100) 
food = Food.create(name: "yeast")
Item.create(user: charles, unit: ml, quantity: 100.00, remaining: 100) 
food = Food.create(name: "yeast, quick rise")
Item.create(user: charles, unit: ml, quantity: 100.00, remaining: 100) 






