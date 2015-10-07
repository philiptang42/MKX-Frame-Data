# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: "Chicago" }, { name: "Copenhagen" }])
#   Mayor.create(name: "Emanuel", city: cities.first)

characters = [
  ["Scorpion", "A risen Spectre hellbent on obtaining vengeance."],
  ["Subzero", "Icy Grandmaster of the Lin Kuei Clan."],
  ["Cassie Cage", "Special Forces sergeant; bane of Shinnok."],
  ["Kitana", "Princess of Edenia and stepdaughter to the deceased Shao Kahn."],
  ["Kenshi", "A blind, telekinetic swordsman wielding the ancient Katana, Sento."],
  ["Sonya Blade", "General of the Earthrealm Special Forces unit."],
  ["Jax", "Special Forces operative forced to come out of retirement."],
  ["Kung Lao", "Resurrected martial arts master bearing a grudge against Raiden."],
  ["Shinnok", "The fallen Elder God; traitor to his brethren."],
  ["Kano", "Merciless, dastardly leader of the Black Dragon."],
  ["Johnny Cage", "World-renowned, A-list Hollywood actor and champion of Earthrealm."],
  ["D'Vorah", "A member of the insectoid Kytinn race who acts as Kotal Kahn's advisor."],
  ["Ermac", "A mass of souls possessing powerful telekinetic abilities. He is many; you are one."],
  ["Erron Black", "Donning a Western-style cowboy outfit, this mercenary serves Kotal Kahn."],
  ["Ferra-Torr", "A dastardly pair of overwhelming brawn and mischeivous cunning."],
  ["Goro", "Four-armed beast whose legacy includes winning 9 Mortal Kombat tournaments consecutively."],
  ["Jacqui Briggs", "Enlisted in the Special Forces against the wishes of her father, Jax."],
  ["Kotal Kahn", "Osh-tekk warrior who usurped the Outworld throne from Mileena to become Emperor."],
  ["Kung Jin", "Former theif, current White Lotus warrior specializing in bows and chakrams."],
  ["Liu Kang", "Once a supreme defender of Earthrealm, now the Emperor of the Netherrealm."],
  ["Mileena", "Believing the Outworld throne to be hers by bloodright, she engages Kotal Kahn in civil war."],
  ["Quan Chi", "Relentless sorcerer intent on reviving the fallen Elder God Shinnok."],
  ["Raiden", "Elder God who defends Earthrealm and rallies its defenders against its enemies."],
  ["Reptile", "In lieu of Shao Kahn's death, the Zatarran now serves Kotal Kahn."],
  ["Takeda", "Son of Kenshi, apprentice of Scorpion; a new breed of ninja."]
]

characters.each do |character|
  name, description = character
  c = Character.find_or_create_by!(name: name, description: description)
end

User.create(email: ENV['admin_email'], password: ENV['admin_pass'], admin: true)
