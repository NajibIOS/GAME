//
//  Weapon.swift
//  GAME
//
//  Created by abdel on 28/03/2018.
//  Copyright © 2018 Najib ANNABi. All rights reserved.
//

import Foundation

class Weapon {
    
    // WEAPON - Var
    
    var name: String
    var damage: Int
    var magicPower: Int
    
    // WEAPON - Init
    init(name: String , damage: Int, magicPower: Int) {
        self.name = name
        self.damage = damage
        self.magicPower = magicPower
        
    }
}
