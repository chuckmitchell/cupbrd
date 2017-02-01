# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
charles = User.create(name: "Charles", email: "chuckmitchell@gmail.com")

Unit.create(name: "gram", symbol: 'g', measurement_type: "dry")
Unit.create(name: "pinch", symbol: 'pinch', measurement_type: "dry")
Unit.create(name: "milliliter", symbol: 'ml', measurement_type: "liquid")
Unit.create(name: "cup", symbol: 'cp', measurement_type: "liquid")
Unit.create(name: "teaspoon", symbol: 'tsp', measurement_type: "liquid")
Unit.create(name: "tablespoon", symbol: 'tbsp', measurement_type: "liquid")
Unit.create(name: "pieces", symbol: 'pieces', measurement_type: "whole")

cheddar = Food.create(name: "Cheddar Cheese")

