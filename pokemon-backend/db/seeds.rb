# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rest-client'
require 'pry'
@response = JSON.parse(RestClient.get("https://pokeapi.co/api/v2/type"))

Type.destroy_all 
Pokemon.destroy_all 
Move.destroy_all

@response["results"].each do |type|
  Type.create(name: type["name"], url: type["url"])
end

@response["results"].each do |type|
  @types_url = JSON.parse(RestClient.get(type["url"]))
  
  @types_url["pokemon"].each do |pokemon|
    Pokemon.create(name: pokemon["pokemon"]["name"], url: pokemon["pokemon"]["url"], pokemon_type: type["name"])
  end
end

@response["results"].each do |type|
  @types_url = JSON.parse(RestClient.get(type["url"]))
  
  @types_url["moves"].each do |move|
    Move.create(name: move["name"], url: move["url"], move_type: type["name"])
  end
end
