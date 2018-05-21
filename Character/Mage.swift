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
        super.init(name: name, weapon: Threat(), life: 90)
    }
    
    func threat(target: Character) {
        if life > 0 {
            if target.life > 0 {
                target.life += weapon.magicPower
                if target.life > target.maxLife {
                    target.life = target.maxLife
                }
            }else{
                print("The Target Can't To Be Threated Because She Died")
            }
        }else{
            print ("The Mage Can't Threat Beacause He Died")
        }
    }
}
