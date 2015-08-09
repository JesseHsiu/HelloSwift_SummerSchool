//
//  UserDefineModel.swift
//  HelloSwift
//
//  Created by 修敏傑 on 8/9/15.
//  Copyright (c) 2015 NTU. All rights reserved.
//

import Foundation

enum TypeOfLevel : String
{
    case professor = "Professor"
    case master = "Master Degree"
    case shit = "Like a shit"
    case notdefined = "Not defined"
    
    
    static func randomLevel() -> TypeOfLevel {
        let maxLevel: UInt32 = 4
        let levelValue = Int(arc4random_uniform(maxLevel))
        
        switch levelValue {
        case 0: return .professor
        case 1: return .master
        case 2: return .shit
        case 3: return .notdefined
        default: return .professor
        }
    }
}


class UserDefineModel : NSObject{
    
}