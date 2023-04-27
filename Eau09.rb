#Créez un programme qui affiche toutes les valeurs comprises entre deux nombres dans l’ordre croissant. Min inclus, max exclus.
#Exemple: 20 23 -> 20 21 22 23 || 23 20 -> 20 21 22 23 || "Hello everyone" -> 'Erreur'.
#fficher 'Erreur' et quitter le programme en cas de problèmes d’arguments.

#Méthode.
def min_max(min, max)
    min, max = max, min if min > max

    result = []
    (max - min).times do | i |
        result << min + i
    end
    puts result.join(', ')
end

#Erreurs.
if ARGV.empty? || ARGV[0].to_i.to_s != ARGV[0] || ARGV[1].to_i.to_s != ARGV[1] || ARGV.length != 2 then
    puts 'Erreur'
    exit
end

puts min_max(ARGV[0].to_i, ARGV[1].to_i)
#Fin de l'exercice.