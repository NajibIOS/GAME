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
    var uniqueCharacterName = [String]()
    func createCharacters() {
        
        for i in 0..<3 {
            
            var userSelection = 0
            
            print("")
            print("===============================")
            print("Choose The Kind Of Character N°\(i+1) To Add!")
            print("1 - Warriors")
            print("2 - Mage")
            print("3 - Colosse")
            print("4 - Nain")
            print("===============================")
            
            repeat {
                if let data = readLine() {
                    if let dataToInt = Int(data) {
                        userSelection = dataToInt
                    }
                }
            } while userSelection != 1 && userSelection != 2 && userSelection != 3 && userSelection != 4
            
            print("Enter Your Character Name")
            
            let characterName = NameService.shared.nameWarriors()
            
            switch userSelection {
            case 1:
                let warrior = Warrior(name: characterName)
                characters.append(warrior)
            case 2:
                let mage = Mage(name: characterName)
                characters.append(mage)
            case 3:
                let giant = Giant (name: characterName)
                characters.append(giant)
            case 4:
                let dwarf = Dwarf (name: characterName)
                characters.append(dwarf)
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
