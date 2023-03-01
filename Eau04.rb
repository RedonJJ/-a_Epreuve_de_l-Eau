#Créer un programme qui affiche le premier nombre premier supérieur au nombre donné en argument.

print "Veuillez saisir un nombre entier positif :"
number = gets.chomp.to_i

#Définit une méthode pour trouver si le nombre est premier.
def primeNumber(x)

    #Si il est inférieur à 2 il n'est pas premier.
    if x < 2
        return false
    end

    #Vérifie si le nombre est divisible par un nombre autre que 1 et lui-même.
    for y in 2..x - 1
        if x % y == 0
            return false
        end
    end

    #Si le nombre n'est pas divisible par un autre nombre que 1 et lui-même, alors il est premier.
    return true
end

#Définit la méthode pour trouver le prochain nombre premier supérieur au nombre donné en argument.
def nextFirstNumber(nb)

    #Vérifie si le nombre entrer est lui-même premier.
    if primeNumber(nb)
        puts "#{nb} est lui même un nombre premier."
    end

    #Ajoute 1 pour chercher le nombre suivant.
    nb += 1

    #Cherche le premier nombre premier suivant en incrémentant nb jusqu'à ce qu'il soit premier.
    nb += 1 until primeNumber(nb)
    puts "Le prochain nombre premier est #{nb}"
end 

nextFirstNumber(number)

#Fin de l'exercice.