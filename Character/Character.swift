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
    
    var name: String
    var life: Int
    var weapon : Weapon
    
    // CHARACTER - Init
    
    init(name: String ,weapon: Weapon, life: Int) {
        self.name = name
        self.life = life
        self.weapon = weapon
    }
    // CHARACTER - Methodes
    
    func toAttack (target: Character) {
        // retir the point life to the  target
        target.life -= weapon.damage
    }
    
    func description(index: Int) {
        print("\(index) " + name + " - \(life) pv - \(weapon.damage) damage")
    }
}
