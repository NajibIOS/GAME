//
//  File.swift
//  GAME
//
//  Created by abdel on 28/03/2018.
//  Copyright © 2018 Najib ANNABi. All rights reserved.
//

import Foundation

class Character {
    
    // CHARACTER - Var
    
    let name: String
    var life: Int
    var weapon : Weapon
    let maxLife : Int
    
    // CHARACTER - Init
    
    init(name: String ,weapon: Weapon, life: Int) {
        self.name = name
        self.life = life
        self.weapon = weapon
        self.maxLife = life
    }
    // CHARACTER - Methodes
    
    func toAttack (target: Character) {
        if life > 0 {
            // Verify that the character who attacks is always alive
            if target.life > 0 {
                // retir the point life to the  target
                target.life -= weapon.damage
                // Verify that the target is always alive
                if target.life < 0 {
                //Do so that no life are not negative
                    target.life = 0
                }
            }else{
                print( "We Can't To Attack A Dead Character")
            }
            
            
        }else{
            print("The Character Can't Attack He Died")
        }
    }
    
    func description(index: Int) {
        print("\(index) " + name + " - \(life) pv - \(weapon.damage) damage")
    }
}
