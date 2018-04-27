//
//  Game.swift
//  GAME
//
//  Created by abdel on 19/04/2018.
//  Copyright © 2018 Najib ANNABi. All rights reserved.
//

import Foundation

class Game {
    var teams = [Team]()
    var round = 0
    func winner() {
        
        for i in 0..<teams.count {
            
            if !teams[i].teamIsDead() {
                print ("Team \(i+1) Win")
                print ("The In Duration \(round) rounds")
            }
        }
    }
    
    func start()  {
        welcome()
        // CREATION TEAMS
        for i in 0..<2 {
            print("Team Constitution N° \(i+1)")
            let team = createTeam()
            teams.append (team)
        }
        fight()
        winner()
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
        //des fonction en swift qui permert de creer des nombres aléatoire
        // Create a var Which is going to contain a random number between 0 and 100
        let randomNumber = arc4random_uniform(100)
        // If the random number is lower than 20
        if randomNumber < 20 {
            print("A Mysterious Chest Appears, An Overpowered Weapon Is Inside")
            // Modify the weapon of the target
            if target is Mage {
                // If the target is "Mage" equips him with the magic weapon
                target.weapon = LanternShield()
                print(target.name + " Open The Chest And Equip Himself With " + target.weapon.name )
            } else {
                target.weapon = Scepter()
            }
        }
    }
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
