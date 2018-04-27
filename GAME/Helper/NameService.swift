//
//  NameService.swift
//  GAME
//
//  Created by abdel on 27/04/2018.
//  Copyright © 2018 Najib ANNABi. All rights reserved.
//

import Foundation

class NameService {
    
    var uniqueCharacterName = [String]()
    
    static let shared = NameService()
    private init() {}
    
    func nameWarriors() -> String {
        var characterName = ""
        repeat {
            if let data = readLine() {
                characterName = data
                if uniqueCharacterName.contains(characterName) {
                    print("This Name Is Already Taken !")
                    characterName = ""
                }else{
                    uniqueCharacterName.append(characterName)
                }
            }
            
        } while characterName == ""
        return characterName
    }
    
}
