#Créez un programme qui détermine si une chaîne de caractères ne contient que des chiffres.
#Exemple: "671" -> || 42 -> true || "Bonjour 36" -> false.
#Afficher 'erreur' et quitter le programme en cas de problèmes d’arguments.

#Méthode.
def number_only(string)
    result = ''
    string.each_char do | char |
        return false unless char.match?(/[0-9]/)
    end
    true
end

#Erreurs.
if ARGV[0].empty? then
    puts 'Erreur'
    exit
end

puts number_only(ARGV[0])
#Fin de l'exercice.