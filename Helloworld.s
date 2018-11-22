# Hello World en MIPS

        .data                        # Déclarations des données utilisées
coucou:   .asciiz "Hello World!\n";  #Declaration d'une chaine de caracteres asciiz

        .text

main:                                # Debut de la partie code

        li $v0, 4                    #li v0 sert à dire que nous allons faire une commande système, le 4 correspond à la commande systeme 4, un "print"
        la $a0, coucou               #la a0 veut dire "merci de faire ce print a partir du registre a0 auquel je soumet le contenu de la data "coucou"
        syscall                      # Maintenant on demande au systèe d'executer cette commande système, MIPS est un langage très poli
        
                                     # Et pour quiter le programme
        li $v0, 10                   #li v0, on dit qu'on va faire une autre commande systeme, la 10, qui correspond a "quitter"
        syscall                      #On demande a MIPS d'exectuer la commande systeme que l'on a annoncé, merci MIPS

# Fin du Programme
