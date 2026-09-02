number = [1, 2, 3, 4, "5", "Mukut", 8.1, "12.5", nil, "nil", { "name" => "Mukut", "age" => 10 }]

number[3]
number[10]
number[10]["age"]

hash = { "name" => "Mukut", "age" => 10, "skills" => ["html", "css"], "marks" => { "english" => 10.5, "hindi" => 8.5 } }

hash["name"]
hash["age"]
hash["skills"]
hash["marks"]
hash["marks"]["hindi"]
hash["skills"][1]

hash1 = { :name => "mukut" }
hash1[:name]
