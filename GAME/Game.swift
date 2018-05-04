//
//  Game.swift
//  GAME
//
//  Created by abdel on 19/04/2018.
//  Copyright © 2018 Najib ANNABi. All rights reserved.
//

import Foundation

class Game {
    
    // MARK: - VARS
    private var teams = [Team]()
    private var round = 0
    
    // MARK: - CLASS METHODS
    private func winner() {
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
    private func welcome() {
        print("")
        print("===============================")
        print("Welcome in the world of the darkness. Only the strongest will survive")
        print("===============================")
    }
    
    private func createTeam() -> Team {
        let team = Team()
        team.createCharacters()
        return team
    }
    
    private func chest(target : Character) {
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
    
    private func input() -> Int {
        var userSelection = 0
        repeat {
            if let data = readLine() {
                if let dataToInt = Int(data) {
                    userSelection = dataToInt
                }
            }
        } while userSelection != 1 && userSelection != 2 && userSelection != 3
        return userSelection
    }
    
    private func attackAction(i: Int, character: Character)  {
        teams[i+1].description()
        // Select the caracter to Attack
        let victim = teams[i+1].characters[input() - 1]
        // Make the action to Attack
        character.toAttack(target: victim)
    }
    
    private func fight() {
        var userSelection = 0
        while true {
            for i in 0..<teams.count {
                // Choose the team that make the action
                teams[i].description()
                // Choose the character that make the action
                userSelection = input()
                let character = teams[i].characters[userSelection - 1]
                chest(target: character)
                // Determine if the character chosen is a Mage
                if let mage = character as? Mage {
                    //  if the character chosen is a monster
                    // List the team of Mage
                    teams[i].description()
                    // Select the character  to threat
                    userSelection = input()
                    let character = teams[i].characters[userSelection - 1]
                    // Threat the character
                    mage.threat(target: character)
                } else {
                    if i == 0 {
                        attackAction(i: i+1 , character: character)
                        if teams[i+1].teamIsDead(){
                            return
                        }
                    } else {
                         attackAction(i: i-1 , character: character)
                            //  Game Over, and make fignt again
                            if teams[i-1].teamIsDead(){
                                return
                            }
                     }
                }
            }
            round += 1
        }
    }
}
                        

