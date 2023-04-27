#Créez un programme qui met en majuscule la première lettre de chaque mot d’une chaîne de caractères. 
#Les autres lettres devront être en minuscules. Les mots ne sont délimités que par un espace, une tabulation ou un retour à la ligne.
#Exemple: Bonjour mathilde ! comment vas-tu ?! -> Bonjour Mathilde ! Comment Vas Tu ?!
#Afficher 'Erreur' et quitter le programme en cas de problèmes d'arguments.

#Méthode.
def uppercase(sentence)
    result = ''
    sentence.each_char.with_index do | char, index |
        result << if index.zero? || sentence[index - 1].match?(/\s/) then
            char.upcase
        else
            char.downcase
        end
    end
    result
end

#Erreurs.
if ARGV[0].empty? || ARGV[0].to_i.to_s == ARGV[0] then
    puts 'Erreur'
    exit
end

puts uppercase(ARGV[0])
#Fin de l'exercice.