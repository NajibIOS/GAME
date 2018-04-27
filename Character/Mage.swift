//
//  Mage.swift
//  GAME
//
//  Created by abdel on 28/03/2018.
//  Copyright © 2018 Najib ANNABi. All rights reserved.
//

import Foundation

class Mage: Character {
    
    // MAGE - Init
    
    init(name:String) {
        super.init(name: name, weapon: Sword(), life: 90)
    }
    
    func threat(target: Character) {
        target.life += weapon.magicPower
    }
}
