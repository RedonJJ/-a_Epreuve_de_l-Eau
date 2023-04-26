#Créer un programme qui détermine si une chaîne de caractères se trouve dans une autre.
#Afficher "error" et quitter le programme en cas de problèmes d'arugments.
#Ne pas utiliser .include?

#Méthode
def string_in_string?(x, y)
    x.each_char.with_index do |char, index|
      return true if char == y[0] && x[index, y.length] == y
    end
    false
end
  
#Erreur
if ARGV.length != 2
    puts('error')
    exit
end
  
  puts string_in_string?(ARGV[0], ARGV[1])
#Fin de l'exercice.