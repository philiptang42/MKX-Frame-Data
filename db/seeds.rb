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
  ["Kano", "Kano", "Merciless criminal and leader of the Black Dragon."],
  ["Johnny Cage", "Johnny-Cage", "World-renowned, A-list Hollywood actor and champion of Earthrealm."],
  ["D'Vorah", "D-Vorah", "A member of the insectoid Kytinn race who acts as Kotal Kahn's advisor."],
  ["Ermac", "Ermac", "A mass of souls possessing powerful telekinetic abilities. He is many; you are one."],
  ["Erron Black", "Erron-Black", "Donning a Western-style cowboy outfit, this mercenary serves Kotal Kahn."],
  ["Ferra-Torr", "Ferra-Torr", "A dastardly pair of overwhelming brawn and mischeivous cunning."],
  ["Goro", "Goro", "Four-armed beast whose legacy includes winning 9 Mortal Kombat tournaments consecutively."],
  ["Jacqui Briggs", "Jacqui-Briggs", "Enlisted in the Special Forces against the wishes of her father, Jax."],
  ["Kotal Kahn", "Kotal-Kahn", "Osh-tekk warrior who usurped the Outworld throne to become Emperor."],
  ["Kung Jin", "Kung-Jin", "Former thief, current White Lotus warrior specializing in bows and chakrams."],
  ["Liu Kang", "Liu-Kang", "Once a supreme defender of Earthrealm, now the Emperor of the Netherrealm."],
  ["Mileena", "Mileena", "Believing the Outworld throne to be hers by bloodright, she engages Kotal Kahn in civil war."],
  ["Quan Chi", "Quan-Chi", "Relentless sorcerer intent on reviving the fallen Elder God Shinnok."],
  ["Raiden", "Raiden", "Elder God who defends Earthrealm and rallies its defenders against its enemies."],
  ["Reptile", "Reptile", "In lieu of Shao Kahn's death, the Zatarran now serves Kotal Kahn."],
  ["Takeda", "Takeda", "Son of Kenshi, apprentice of Scorpion; a new breed of ninja."]
]

# directional symbols used in moves
# ▼ ▲ ◄ ►
# ← → ↓ ↑

moves = [
  # Scorpion
  ["Spear", "Spear", "← → + 1", "High", "3%", 1],
  ["Teleport", "Teleport", "↓ ← + 3", "High", "5%", 1],
  ["Air Teleport", "Air-Teleport", "↓ ← + 3", "Mid", "5%", 1],
  ["Takedown", "Takedown", "← → + 4", "Low", "11%", 1],
  ["(X-Ray) From Hell", "X-Ray-From-Hell", "L2 + R2", "Mid", "33.70%", 1],
  # Subzero
  ["Ice Burst", "Ice-Burst", "↓ ← + 1", "Mid", "9%", 2],
  ["Ice Ball", "Ice-Ball", "↓ → + 2", "High", "0%", 2],
  ["Slide", "Slide", "← → + 4", "Low", "8%", 2],
  ["(X-Ray) Deep Freeze", "X-Ray-Deep-Freeze", "L2 + R2", "High", "31%", 2],
  # Cassie Cage
  ["Single Shot", "Single-Shot", "← → + 1", "High", "7%", 3],
  ["Glow Kick", "Glow-Kick", "← → + 4", "Mid", "8%", 3],
  ["Getaway Flip", "Getaway-Flip", "↓ ← + 2", "Mid", "6%", 3],
  ["(X-Ray) Testi-kill", "X-Ray-Testi-kill", "L2 + R2", "Mid", "35%", 3],
  # Kitana
  ["Rising Fan", "Rising-Fan", "↓ ← + 2", "Mid", "7.40%", 4],
  ["Throat Slice", "Throat-Slice", "← → + 3", "Mid", "10%", 4],
  ["Fan Throw", "Fan-Throw", "↓ → + 1", "High", "6%", 4],
  ["Air Fan Throw", "Air-Fan-Throw", "↓ → + 1", "High", "6%", 4],
  ["Upraise", "Upraise", "↓ ← + 1", "Mid", "0%", 4],
  ["(X-Ray) Slice and Dice", "X-Ray-Slice-and-Dice", "L2 + R2", "Overhead", "34.55%", 4],
  # Kenshi
  ["Rising Sword", "Rising-Sword", "↓ ← + 1", "Mid", "8%", 5],
  ["Spinning Blade", "Spinning-Blade", "↓ → + 1", "Overhead", "7.80%", 5],
  ["Blade Reflect", "Blade-Reflect", "↓ ← + 2", "Deflection", "0%", 5],
  ["(X-Ray) Way of the Blade", "X-Ray-Way-of-the-Blade", "L2 + R2", "Mid", "32%", 5],
  #Sonya Blade
  ["Air Drop", "Air-Drop", "↓ + 4", "Mid", "5%", 6],
  ["Energy Blast", "Energy-Blast", "← → + 2", "High", "5%", 6],
  ["Arc Kick", "Arc-Kick", "↓ ← + 4", "Mid", "7%", 6],
  ["Leg Grab", "Leg-Grab", "← → + 4", "Mid", "10%", 6],
  ["(X-Ray) Special Forces", "X-Ray-Special-Forces", "L2 + R2", "Counter", "32%", 6],
  #Jax
  ["Energy Wave", "Energy-Wave", "↓ ← + 2", "High", "7%", 7],
  ["Ground Pound", "Ground-Pound", "↓ ↓ + 4", "Unblockable", "6%", 7],
  ["Dash Punch", "Dash-Punch", "← → + 2", "High", "10%", 7],
  ["Downward Dash Punch", "Downward-Dash-Punch", "← → + 2 ↓", "Overhead", "10%", 7],
  ["Major Pain", "Major-Pain", "← → + 4", "Mid", "10%", 7],
  ["Gotcha Grab", "Gotcha-Grab", "↓ ← + 1", "High", "8%", 7],
  ["(X-Ray) Bring It", "X-Ray-Bring-It", "L2 + R2", "Overhead", "32%", 7],
  #Kung Lao
  ["Spin", "Spin", "↓ → + 1", "Mid", "5%", 8],
  ["Dive Kick", "Dive-Kick", "↓ + 4", "Mid", "5%", 8],
  ["Teleport - Hammer Punch", "Teleport-Hammer-Punch", "↓ ↑ + 2", "Overhead", "6%", 8],
  ["Hat Toss", "Hat-Toss", "← → + 2", "Mid", "7%", 8],
  ["(X-Ray) Head Trauma", "X-Ray-Head-Trauma", "L2 + R2", "Mid", "34.26%", 8],
  #Shinnok
  ["Charging Shoulder", "Charging-Shoulder", "← → + 3", "Mid", "8.50%", 9],
  ["Hell Sparks", "Hell-Sparks", "↓ ← + 2", "Mid", "10.01%", 9],
  ["Amulet Strike", "Amulet-Strike", "← → + 1", "High", "9%", 9],
  ["(X-Ray) The Devil's Hand", "X-Ray-The-Devils-Hand", "L2 + R2", "Mid", "35%", 9],
  #Kano
  ["Air Ball", "Air-Ball", "← → + 3", "Mid", "8.75%", 10],
  ["Kano Ball", "Kano-Ball", "← → + 3", "Mid", "10.60%", 10],
  ["Up Ball", "Up-Ball", "↓ ← + 2", "Mid", "9.60%", 10],
  ["Blade Throw", "Blade-Throw", "↓ → + 2", "High", "6%", 10],
  ["(X-Ray) Lacerator", "X-Ray-Lacerator", "L2 + R2", "Mid", "32%", 10],
  #Johnny Cage
  ["High Forceball", "High-Forceball", "↓ ← + 2", "Mid", "8%", 11],
  ["Low Forceball", "Low-Forceball", "↓ → + 2", "Mid", "8%", 11],
  ["Flip Kick", "Flip-Kick", "↓ ← + 4", "Mid", "8%", 11],
  ["Nut Punch", "Nut-Punch", "← ↓ + 3", "Mid", "9%", 11],
  ["Shadow Kick", "Shadow-Kick", "← → + 4", "High", "8%", 11],
  ["(X-Ray) Kasting Kall", "X-Ray-Kasting-Kall", "L2 + R2", "Overhead", "33%", 11],
  #D'Vorah
  ["Bug Blast", "Bug-Blast", "↓ → + 1", "High", "7%", 12],
  ["Spawning Puddle", "Spawning-Puddle", "↓ ← + 1", "Low", "8%", 12],
  ["Forward Air Throw", "Forward-Air-Throw", "↓ + L1", "Unblockable", "11%", 12],
  ["Backward Air Throw", "Backward-Air-Throw", "↓ + L1, ←", "Unblockable", "11%", 12],
  ["Ovipositor Charge", "Ovipositor-Charge", "↓ ← + 4", "Mid", "5.70%", 12],
  ["(X-Ray) Stick Around", "X-Ray-Stick-Around", "L2 + R2", "Mid", "33%", 12],
  #Ermac
  ["Soul Burst", "Soul-Burst", "↓ ← + 2", "Mid", "5%", 13],
  ["Air Soul Burst", "Air-Soul-Burst", "↓ ← + 2", "Overhead", "5%", 13],
  ["Force Lift", "Force-Lift", "↓ ← + 2", "Mid", "4.25%", 13],
  ["Teleport", "Teleport", "↓ ← + 4", "Mid", "5%", 13],
  ["Hover - Ground Slam", "Hover-Ground-Slam", "↓ ↓ ↑ + 3", "Low", "8%", 13],
  ["(X-Ray) We Are Many", "X-Ray-We-Are-Many", "L2 + R2", "Mid", "29%", 13],
  #Erron Black
  ["Sand Grenade", "Sand-Grenade", "← → + 3", "Low", "9%", 14],
  ["Caltrops", "Caltrops", "↓ ← + 3", "Trap", "7.50%", 14],
  ["Sand Slide", "Sand-Slide", "← → + 4", "Low", "10%", 14],
  ["Sand Gust", "Sand-Gust", "↓ ← + 4", "High", "8%", 14],
  ["Sand Trap", "Sand-Trap", "↓ ← → + 2", "Throw", "13%", 14],
  ["(X-Ray) Trick Shot", "X-Ray-Trick-Shot", "L2 + R2", "Mid", "35%", 14],
  #Ferra Torr
  ["Deep Stab", "Deep-Stab", "↓ ← → + 1", "Throw", "11%", 15],
  ["Bowl Girl", "Bowl Girl", "← → + 1", "Low", "9%", 15],
  ["Ferra Toss", "Ferra-Toss", "↓ ← + 2", "Overhead", "10%", 15],
  ["Tuck 'n' Charge", "Tuck-n-Charge", "← → + 3", "Overhead", "9.50%", 15],
  ["(X-Ray) Bone Crusher", "X-Ray-Bone-Crusher", "L2 + R2", "Overhead", "36.70%", 15],
  #Goro
  ["Shokan Bolt", "Shokan-Bolt", "← → + 1", "High", "9%", 16],
  ["Punch Walk", "Punch-Walk", "← → + 4", "Mid", "11.88%", 16],
  ["Shokan Grab", "Shokan-Grab", "↓ ← → + 3", "Throw", "14%", 16],
  ["Stomp", "Stomp", "↓ ↑", "Unblockable", "10%", 16],
  ["(X-Ray) Spine Adjustment", "X-Ray-Spine-Adjustment", "L2 + R2", "Mid", "31.75%", 16],
  #Jacqui Briggs
  ["Air Ground Smash", "Air-Ground-Smash", "↓ ↓ + 4", "Low", "9%", 17],
  ["Forces Rush", "Forces-Rush", "← → + 1", "High", "9.60%", 17],
  ["Bionic Dash", "Bionic-Dash", "← → + 2", "Mid", "6%", 17],
  ["Gauntlet Strike", "Gauntlet-Strike", "← → + 4", "Mid", "15%", 17],
  ["Tech Shield", "Tech-Shield", "↓ ← + 1", "Deflection", "N/A", 17],
  ["(X-Ray Chest Kavity)", "X-Ray-Chest-Kavity", "L2 + R2", "Mid", "29%", 17],
  #Kotal Kahn
  ["Blood Offering", "Blood-Offering", "→ ↓ ← + 4", "Temporary 50% Damage Increase", "10% (Self)", 18],
  ["Sunstone", "Sunstone", "↓ → + 3", "Mid", "11%", 18],
  ["God Ray", "God-Ray", "↓ → + 4", "Trap", "10%", 18],
  ["Air Takedown", "Air-Takedown", "↓ → + 1", "Unblockable", "10%", 18],
  ["(X-Ray) Sunburn", "X-Ray-Sunburn", "L2 + R2", "Mid", "33%", 18],
  #Kung Jin
  
  #Liu Kang
  #Mileena
  #Quan Chi
  #Raiden
  #Reptile
  #Takeda
]

frames = [
  # Scorpion
  ["23", "101", "52", "-23", "56", "N/A", 1],
  ["21", "3", "30", "-23", "18", "N/A", 2],
  ["20", "9", "35", "-26", "15", "N/A", 3],
  ["11", "8", "58", "-32", "-5", "N/A", 4],
  ["21", "20", "20", "2", "2", "N/A", 5],
  # Subzero
  ["23", "4", "24", "-10", "37", "N/A", 6],
  ["31", "200", "-164", "-18", "114", "N/A", 7],
  ["9", "12", "14", "-22", "30", "N/A", 8],
  ["12", "4", "-15", "0", "0", "N/A", 9],
  # Cassie Cage
  ["25", "101", "-69", "-4", "-9", "N/A", 10],
  ["13", "5", "46", "-38", "36", "N/A", 11],
  ["6", "6", "36", "-30", "62", "N/A", 12],
  ["13", "2", "44", "-10", "-5", "N/A", 13],
  # Kitana
  ["12", "12", "46", "-15", "28", "N/A", 14],
  ["11", "17", "22", "-30", "49", "N/A", 15],
  ["19", "200", "-172", "-10", "12", "N/A", 16],
  ["8", "200", "-148", "-34", "-12", "N/A", 17],
  ["18", "9", "33", "-14", "101", "N/A", 18],
  ["9", "38", "45", "-11", "0", "N/A", 19],
  # Kenshi
  ["16", "7", "32", "-11", "51", "N/A", 20],
  ["14", "26", "30", "-10", "22", "N/A", 21],
  ["10", "17", "24", "-50", "-50", "N/A", 22],
  ["14", "2", "46", "-12", "8", "N/A", 23],
  #Sonya Blade
  ["15", "12", "8", "-26", "4", "53", 24],
  ["19", "79", "-46", "-15", "7", "N/A", 25],
  ["17", "15", "25", "-20", "25", "N/A", 26],
  ["11", "3", "38", "-22", "10", "N/A", 27],
  ["2", "45", "15", "-61", "63", "N/A", 28],
  #Jax
  ["22", "200", "-170", "7", "10", "N/A", 29],
  ["43", "4", "24", "9", "64", "N/A", 30],
  ["10", "8", "35", "-7", "26", "N/A", 31],
  ["5", "2", "38", "-17", "39", "N/A", 32],
  ["11", "8", "28", "-8", "25", "N/A", 33],
  ["9", "3", "18", "-4", "8", "N/A", 34],
  ["20", "3", "27", "4", "4", "N/A", 35],
  #Kung Lao
  ["7", "34", "38", "-25", "70", "N/A", 36],
  ["6", "16", "17", "-38", "51", "N/A", 37],
  ["11", "5", "37", "-25", "35", "N/A", 38],
  ["15", "301", "-263", "-25", "2", "N/A", 39],
  ["15", "22", "38", "-4", "6", "N/A", 40],
  #Shinnok
  ["12", "20", "24", "-15", "36", "N/A", 41],
  ["13", "46", "9", "-27", "20", "57", 42],
  ["16", "5", "33", "-10", "2", "N/A", 43],
  ["26", "3", "31", "2", "13", "N/A", 44],
  #Kano
  ["2", "30", "47", "-46", "5", "19", 45],
  ["13", "32", "29", "-20", "33", "N/A", 46],
  ["6", "19", "37", "-27", "28", "N/A", 47],
  ["16", "101", "-76", "-7", "7", "N/A", 48],
  ["21", "3", "41", "-8", "4", "N/A", 49],
  #Johnny Cage
  ["19", "601", "-572", "-11", "11", "N/A", 50],
  ["19", "601", "-572", "-11", "11", "N/A", 51],
  ["12", "5", "29", "-16", "27", "N/A", 52],
  ["11", "4", "42", "-19", "22", "N/A", 53],
  ["11", "16", "17", "-13", "30", "N/A", 54],
  ["26", "3", "18", "15", "42", "N/A", 55],
  #D'Vorah
  ["28", "200", "-175", "-7", "15", "N/A", 56],
  ["47", "6", "0", "22", "36", "N/A", 57],
  ["8", "3", "11", "0", "7", "N/A", 58],
  ["8", "3", "11", "0", "7", "N/A", 59],
  ["11", "23", "30", "-15", "43", "N/A", 60],
  ["5", "17", "30", "-15", "6", "N/A", 61],
  #Ermac
  ["11", "6", "34", "-14", "3", "N/A", 62],
  ["10", "2", "35", "-9", "3", "N/A", 63],
  ["13", "2", "66", "-51", "20", "N/A", 64],
  ["25", "3", "26", "-17", "35", "N/A", 65],
  ["20", "11", "27", "-1", "2", "N/A", 66],
  ["13", "5", "44", "-12", "-1", "N/A", 67],
  #Erron Black
  ["23", "200", "-166", "-16", "21", "N/A", 68],
  ["40", "301", "-294", "-46", "-46", "N/A", 69],
  ["17", "14", "28", "-25", "27", "N/A", 70],
  ["19", "4", "25", "-1", "40", "N/A", 71],
  ["16", "2", "33", "-17", "20", "166", 72],
  ["34", "4", "39", "-6", "15", "N/A", 73],
  #Ferra Torr
  ["11", "5", "45", "-31", "9", "N/A", 74],
  ["16", "20", "24", "-7", "6", "N/A", 75],
  ["13", "22", "16", "-1", "-5", "N/A", 76],
  ["15", "52", "44", "-8", "3", "N/A", 77],
  ["21", "34", "24", "6", "-1", "N/A", 78],
  #Goro
  ["23", "200", "-157", "-15", "-3", "N/A", 79],
  ["12", "41", "31", "-5", "19", "N/A", 80],
  ["8", "3", "47", "-14", "8", "N/A", 81],
  ["51", "10", "46", "-28", "8", "N/A", 82],
  ["30", "2", "4", "29", "20", "N/A", 83],
  #Jacqui Briggs
  ["33", "5", "34", "0", "14", "N/A", 84],
  ["12", "6", "42", "-27", "21", "N/A", 85],
  ["25", "4", "33", "-19", "41", "N/A", 86],
  ["21", "1", "47", "-30", "10", "N/A", 87],
  ["11", "28", "3", "-41", "-41", "N/A", 88],
  ["22", "2", "27", "7", "0", "N/A", 89],
  #Kotal Kahn
  ["1", "0", "63", "-63", "-63", "N/A", 90],
  ["42", "101", "-69", "5", "38", "N/A", 91],
  ["19", "401", "-351", "-68", "-68", "N/A", 92],
  ["8", "4", "20", "-6", "-2", "N/A", 93],
  ["22", "4", "40", "-5", "8", "N/A", 94],
  #Kung Jin

  #Liu Kang
  #Mileena
  #Quan Chi
  #Raiden
  #Reptile
  #Takeda
]

characters.each do |character|
  name, db_name, description = character
  c = Character.find_or_create_by!(name: name, db_name: db_name, description: description)
end

moves.each do |move|
  name, db_name, button_command, move_type, damage, character_id = move
  m = Move.find_or_create_by!(name: name, db_name: db_name, button_command: button_command, move_type: move_type, damage: damage, character_id: character_id)
end

frames.each do |frame|
  startup, active, recover, blockadv, hitadv, cancelwindow, move_id = frame
  f = Frame.find_or_create_by!(startup: startup, active: active, recover: recover, blockadv: blockadv, hitadv: hitadv, cancelwindow: cancelwindow, move_id: move_id)
end

User.create(email: ENV['admin_email'], password: ENV['admin_pass'], admin: true)
