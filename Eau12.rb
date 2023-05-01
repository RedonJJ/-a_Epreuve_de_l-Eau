#Créer un programme qui trie une liste de nombre.
#Votre programme devra implémenter l'algorithme du tri à bulle.
#Exemple: 6 5 4 3 2 1 -> 1 2 3 4 5 6 || test test test -> erreur.

#Méthode.
def my_bubble_sort(array)
    array.each_with_index do | item, index |
        next if index == array.size - 1
        next unless item > array[index + 1]
        array[index] = array[index + 1]
        array[index + 1] = item
        my_bubble_sort(array)
    end
    array
end

#Erreurs.
if ARGV.empty? || ARGV.any? { |i| i.to_i.to_s != i } then
    puts 'Erreur'
    exit
end

puts my_bubble_sort(ARGV.map(&:to_i)).join(' ')
#Fin de l'exercice.