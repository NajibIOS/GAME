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
        // retir the point life to the  target
        target.life -= weapon.damage
        // Verifier que le personnage qui attaque est toujours vivante
        // verifie que la target est toujpurs vivante
        // faire en sorte que les point de vie ne soient pas négatifs
    }
    
    func description(index: Int) {
        print("\(index) " + name + " - \(life) pv - \(weapon.damage) damage")
    }
}
