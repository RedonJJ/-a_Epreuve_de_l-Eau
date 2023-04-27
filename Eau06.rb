#Créer un programme qui met en majuscule une lettre sur deux d'une chaîne de caractères.
#Seuls les lettres [a-zA-Z] sont prises en compte.
#Exemple: "Hello World" -> "HeLlO wOrLd".
#Afficher 'Erreur' et quitter le programme en cas de problèmes d'arguments.

#Méthode.
def one_on_two(sentence)
    result = ''
    i = 0
    sentence.each_char do | char |
        if char.match(/[a-zA-Z]/) then
            result << (i.even? ? char.upcase : char.downcase)
            i += 1
        else  
            result << char
        end
    end
    result
end

#Erreurs.
if ARGV[0].empty? || ARGV[0].to_i.to_s == ARGV[0] then
    puts 'Erreur'
    exit
end
    

puts one_on_two(ARGV[0])
#Fin de l'exercice.