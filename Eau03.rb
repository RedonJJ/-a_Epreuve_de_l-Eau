#Créer un programme qui affiche le N-ème élément de la célèbre suite de Fibonacci (0,1,1,2) étant le début de suite et le premier élément étant à l'index 0.

print "Entrez un entier positif : "
number = gets.chomp.to_i

def fibonacci(nb)
    # Initialisation des deux premiers termes de la suite.
    fibonacci = [0, 1]

    # Calcul de la suite jusqu'au n-ème terme.
    for i in 2..nb
      fibonacci[i] = fibonacci[i-1] + fibonacci[i-2]
    end

    # Affichage du n-ème terme de la suite.
    puts "Le terme numéro #{nb} de la suite de Fibonacci est #{fibonacci[nb]}"
end

fibonacci(number)

#Fin de l'exercice.