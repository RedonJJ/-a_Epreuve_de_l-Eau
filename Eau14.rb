#Créer un programme qui trie les éléments donnés en argument par ordre ASCII.
#Exemple: A Z E R T Y -> A E R T Y Z 

#Méthode.
def ascii_order(array)
    result = []
    array.each do |item|
        result << item
        result.sort!
    end
    result
end

#Erreurs.
if ARGV.empty?
    puts 'Erreur'
    exit
end

puts ascii_order(ARGV)
#Fin de l'exercice.