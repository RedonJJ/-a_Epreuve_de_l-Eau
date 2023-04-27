#Créez un programme qui affiche la différence minimum absolue entre deux éléments d’un tableau constitué uniquement de nombres. 
#Nombres négatifs acceptés.
#Exemple: 21 22 45 28 -> 1.
#Afficher erreur et quitter le programme en cas de problèmes d’arguments.

#Méthode.
def absolute_min(array)
    result = []
    array.each_with_index do | item1, index1 |
        array.each_with_index do | item2; index2 |
            next if index1 == index2
            result << (item1.to_i - item2.to_i).abs
        end
    end
    result.min
end

#Erreurs.
if ARGV.empty? || ARGV.any? { |i| i.to_i.to_s != i }
    puts 'Erreur'
    exit
end

puts absolute_min(ARGV)
#Fin de l'exercice.