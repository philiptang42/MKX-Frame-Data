# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: "Chicago" }, { name: "Copenhagen" }])
#   Mayor.create(name: "Emanuel", city: cities.first)

characters = [
  ["Scorpion", "Scorpion", "A risen Spectre hellbent on obtaining vengeance."],
  ["Subzero", "Subzero", "Icy Grandmaster of the Lin Kuei Clan."],
  ["Cassie Cage", "Cassie-Cage", "Special Forces sergeant; bane of Shinnok."],
  ["Kitana", "Kitana", "Princess of Edenia and stepdaughter to the deceased Shao Kahn."],
  ["Kenshi", "Kenshi", "A blind, telekinetic swordsman wielding the ancient Katana, Sento."],
  ["Sonya Blade", "Sonya-Blade", "General of the Earthrealm Special Forces unit."],
  ["Jax", "Jax", "Special Forces operative forced to come out of retirement."],
  ["Kung Lao", "Kung-Lao", "Resurrected martial arts master bearing a grudge against Raiden."],
  ["Shinnok", "Shinnok", "The fallen Elder God; traitor to his brethren."],
  ["Kano", "Kano", "Merciless, dastardly leader of the Black Dragon."],
  ["Johnny Cage", "Johnny-Cage", "World-renowned, A-list Hollywood actor and champion of Earthrealm."],
  ["D'Vorah", "D-Vorah", "A member of the insectoid Kytinn race who acts as Kotal Kahn's advisor."],
  ["Ermac", "Ermac", "A mass of souls possessing powerful telekinetic abilities. He is many; you are one."],
  ["Erron Black", "Erron-Black", "Donning a Western-style cowboy outfit, this mercenary serves Kotal Kahn."],
  ["Ferra-Torr", "Ferra-Torr", "A dastardly pair of overwhelming brawn and mischeivous cunning."],
  ["Goro", "Goro", "Four-armed beast whose legacy includes winning 9 Mortal Kombat tournaments consecutively."],
  ["Jacqui Briggs", "Jacqui-Briggs", "Enlisted in the Special Forces against the wishes of her father, Jax."],
  ["Kotal Kahn", "Kotal-Kahn", "Osh-tekk warrior who usurped the Outworld throne from Mileena to become Emperor."],
  ["Kung Jin", "Kung-Jin", "Former thief, current White Lotus warrior specializing in bows and chakrams."],
  ["Liu Kang", "Liu-Kang", "Once a supreme defender of Earthrealm, now the Emperor of the Netherrealm."],
  ["Mileena", "Mileena", "Believing the Outworld throne to be hers by bloodright, she engages Kotal Kahn in civil war."],
  ["Quan Chi", "Quan-Chi", "Relentless sorcerer intent on reviving the fallen Elder God Shinnok."],
  ["Raiden", "Raiden", "Elder God who defends Earthrealm and rallies its defenders against its enemies."],
  ["Reptile", "Reptile", "In lieu of Shao Kahn's death, the Zatarran now serves Kotal Kahn."],
  ["Takeda", "Takeda", "Son of Kenshi, apprentice of Scorpion; a new breed of ninja."]
]

# ▼ ▲ ◄ ►
# ← → ↓ ↑

moves = [
  ["Spear", "Spear", "← → + 1", "High", "3%", 1],
  ["Teleport", "Teleport", "↓ ← + 3", "High", "5%", 1],
  ["(X-Ray) From Hell", "(X-Ray-From-Hell)", "L2 + R2", "Mid", "33.70%", 1]
]

characters.each do |character|
  name, db_name, description = character
  c = Character.find_or_create_by!(name: name, db_name: db_name, description: description)
end

moves.each do |move|
  name, db_name, button_command, move_type, damage, character_id = move
  m = Move.find_or_create_by!(name: name, db_name: db_name, button_command: button_command, move_type: move_type, damage: damage, character_id: character_id)
end

User.create(email: ENV['admin_email'], password: ENV['admin_pass'], admin: true)
