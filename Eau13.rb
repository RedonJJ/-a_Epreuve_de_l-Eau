#Créer un programme qui trie une liste de nombre.
#Votre programme devrra implémenter l'algorithme du tri par sélection.
#Exemple: 6 5 4 3 2 1 -> 1 2 3 4 5 6 || test test test -> erreur.

#Méthode.
def my_select_sort(array)
    result = []
    array.size.times do
        result << array.min
        array.delete_at(array.index(array.min))
    end
    result
end

#Erreurs.
if ARGV.empty? || ARGV.any? { |i| i.to_i.to_s != i } then
    puts 'Erreur'
    exit
end

puts my_select_sort(ARGV.map(&:to_i)).join(' ')
#Fin de l'exercice.