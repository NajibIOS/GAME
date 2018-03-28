//
//  File.swift
//  GAME
//
//  Created by abdel on 28/03/2018.
//  Copyright © 2018 Najib ANNABi. All rights reserved.
//

import Foundation

class Character {
    
    //WARRIORS - Var
    // ACTION : Attack or Treat
    
    var name: String
    var life: Int
    var weapon : Weapon
    
    // WARRIORS - Init
    
    init(name: String ,weapon: Weapon, life: Int) {
        self.name = name
        self.life = life
        self.weapon = weapon
}
