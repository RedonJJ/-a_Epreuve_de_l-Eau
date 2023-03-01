#Créer un programme qui affiche ses arguments reçus à l'envers.

print "Saisissez une phrase: "
sentence = gets.chomp

def reverse_args(args)
    if args.strip.empty? || args.split(" ").length == 1
        puts "Erreur, la phrase n'est pas valide pour une inversion."
    else 
        revArgs = args.split(" ").reverse.join(" ")
        puts revArgs
    end
end

reverse_args(sentence)
#Fin de l'exercice.