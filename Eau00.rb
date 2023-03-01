#Créer un programme qui affiche toutes les différentes combinaisons possibles de trois chiffres dans l'ordre croissant, dans l'ordre croissant. 
#(La répétition est volontaire).

for i in 0..9
    for j in i..9
        for k in j..9
            puts "#{i} #{j} #{k}"
        end
    end
end

#Fin de l'exercice.