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
        target.life += weapon.magicPower
        // Faire en sorte que le perssonage mort ne paeut soigner (Si le mage est ne peut pas soigner)
        // Verifier que la taget est toujours vivante avant de la soigner
        // faire en sorte de ne pas dépasser les points de vie max apres un soin (Si on est a 100 % , si on soigne a 20 , ça doit soigner à 0 )
    }
}
