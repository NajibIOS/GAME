//
//  Game.swift
//  GAME
//
//  Created by abdel on 19/04/2018.
//  Copyright © 2018 Najib ANNABi. All rights reserved.
//

import Foundation

class Game {
    
    //WARRIORS: - Var
    
    var teams = [Team]()
    
    func winner() {
        
        if teams[0].teamIsDead() == true {
            
            print ("l'equipe 2 à gagnée")
        } else {
            
            print ("l'equipe 1 à gagnée")
        }
        // Refaire cette methode pour quelle soit dynamique
        
        
    }
    //WARRIORS: - Methodes
    func start()  {
        welcome()
        // CREATION EQUIPES
        for i in 0..<2 {
            print("Constitution Equipe N° \(i+1)")
            let team = createTeam()
            teams.append (team)
        }
        fight()
    }
    
    // First Page "WELCOME"
    func welcome() {
        print("")
        print("===============================")
        print("Welcome in the world of the darkness. Only the strongest will survive")
        print("===============================")
    }
    
    func createTeam() -> Team {
        let team = Team()
        team.createCharacters()
        return team
    }
    
    func chest(target : Character) {
        
        // Creer une var qui va contenir un nombre aléatoire compris entre 0 et 100
        // Si le nombre aléatoire est inferieur à 20
        // modifier l'arme de la target
        // si la target est un mage tu lui equipe avec l'arme magique du mage
        // si la target est un combattant tu lui equipe avec l'arme magique du combattant
        
        //des fonction en swifit qui permert de creer des nombres aléatoire
    }
    
    func fight() {
        
        var userSelection = 0
        
        while true {
            
            for i in 0..<teams.count {
                
                // lister l'equipe qui fait l'action,
                teams[i].description()
                
                
                // selectionner un character dans la liste
                
                repeat {
                    userSelection = Input.inputInt()
                } while userSelection != 1 && userSelection != 2 && userSelection != 3
                
                
                let character = teams[i].characters[userSelection - 1]
                
                chest(target: character)
                
                // Determiner si le character selectionner est un Mage
                
                if let mage = character as? Mage {
                    
                    // Si c'est un mage
                    // lister l'equipe du Mage
                    
                    teams[i].description()
                    
                    // Integrer la fonction du coffre magique "ThreatChest"
                    
                    // Selectionner le character a soigner
                    
                    repeat {
                        userSelection = Input.inputInt()
                    } while userSelection != 1 && userSelection != 2 && userSelection != 3
                    
                    let character = teams[i].characters[userSelection - 1]
                    
                    // Soigner le character
                    mage.threat(target: character)
                    
                } else {
                    
                    if i == 0 {
                        
                        teams[i+1].description()
                        
                        // Integrer la fonction du coffre magique "Chest"
                        
                        //ThreatChest.threat(target: character)
                        
                        // Selectionner le personnage a attacquer
                        
                        repeat {
                            userSelection = Input.inputInt()
                        } while userSelection != 1 && userSelection != 2 && userSelection != 3
                        
                        let victim = teams[i+1].characters[userSelection - 1]
                        
                        
                        // Faire l'action d'attaquer le character
                        character.toAttack(target: victim)
                        
                        if teams[i+1].teamIsDead(){
                            return
                        }
                        
                        
                    } else {
                        
                        teams[i-1].description()
                        
                        // Selectionner le personnage a attacquer
                        
                        repeat {
                            userSelection = Input.inputInt()
                        } while userSelection != 1 && userSelection != 2 && userSelection != 3
                        
                        let victim = teams[i-1].characters[userSelection - 1]
                        
                        
                        // Faire l'action d'attaquer le character
                        character.toAttack(target: victim)
                        if teams[i-1].teamIsDead(){
                            return
                        }
                    }
                    // Si c'est un combattant
                    // Lister l'equipe adverse
                    
                    
                }
                
            }
            
        }
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
