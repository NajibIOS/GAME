//
//  Team.swift
//  GAME
//
//  Created by abdel on 19/04/2018.
//  Copyright © 2018 Najib ANNABi. All rights reserved.
//

import Foundation

class Team {
    
    var characters = [Character]()
    
    func createCharacters() {
        for i in 0..<3 {
            
            var userSelection = 0
            var characterName = ""
            
            print("")
            print("===============================")
            print("Choisissez le type de personnage N°\(i+1) à ajouter!")
            print("1 - Warriors")
            print("2 - Mage")
            print("3 - Colosse")
            print("4 - Nain")
            print("===============================")
            
            repeat {
                userSelection = Input.inputInt()
            } while userSelection != 1 && userSelection != 2 && userSelection != 3 && userSelection != 4
            
            print("saisir le nom de votre personage")
            
            repeat {
                characterName = Input.inputString()
            } while characterName == ""
            
            
            switch userSelection {
            case 1:
                let warrior = Warrior(name: characterName)
                characters.append(warrior)
            case 2:
                let mage = Mage(name: characterName)
                characters.append(mage)
            case 3:
                let colosse = Colosse(name: characterName)
                characters.append(colosse)
            case 4:
                let nain = Nain(name: characterName)
                characters.append(nain)
            default:
                break
            }
            
            
        }
        
        //CREER LES PERSONNAGES ET LES AJOUTER AUX TABLEAUX CHARECTERS LIGNE 13
        
    }
    
    func description() {
        for i in 0..<characters.count {
            let character = characters[i]
            character.description(index: i+1)
        }
        
    }
    
    func teamIsDead() -> Bool {
        
        var life = false
        
        for character in characters {
            if character.life == 0 {
                life = true
            } else {
                return false
            }
        }
        return life
        
        // Check les points de vie de chaque membre de l'equipe
        //for checkingLife() = true {
        //    return
        //}
        
        //        if life == true {
        //
        //            // Si un personnage est en vie tu return "false"
        //            return false
        //
        //              }
        //        else {
        //            // Si tout les personnage sont morts tu return "true"
        //            return life
        //             }
        //
    }
}
