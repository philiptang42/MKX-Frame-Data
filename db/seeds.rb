# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

characters = [
  ['Scorpion', 'A risen Spectre hellbent on obtaining vengeance.'],
  ['Subzero', 'Icy Grandmaster of the Lin Kuei Clan.'],
  ['Cassie Cage', 'Special Forces sergeant; bane of Shinnok.'],
  ['Kitana', 'Princess of Edenia and stepdaughter to the deceased Shao Kahn.'],
  ['Kenshi', 'A blind, telekinetic swordsman wielding the ancient Katana, Sento.'],
  ['Sonya Blade', 'General of the Earthrealm Special Forces unit.']
]

characters.each do |character|
  name, description = character
  c = Character.find_or_create_by!(name: name, description: description)
end
