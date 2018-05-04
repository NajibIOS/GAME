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
            // retir the point life to the  target
            
            // Verifier que le personnage qui attaque est toujours vivante
            if target.life > 0 {
                target.life -= weapon.damage
                if target.life < 0 {
                    target.life = 0
                }
            }else{
                print( "On Ne Peut Pas Attaquer un Personnage Mort")
            }
            // verifie que la target est toujpurs vivante
            // faire en sorte que les point de vie ne soient pas négatifs
        }else{
            print("les personnage ne peut attaquer car il est mort")
        }
    }
    
    func description(index: Int) {
        print("\(index) " + name + " - \(life) pv - \(weapon.damage) damage")
    }
}
