//
//  Troop.swift
//  tf-hk
//
//  Created by Milo Woodman on 12/19/24.
//

import SpriteKit
import SwiftUI

class Troop {
    let movementPattern: [Direction]
    let friendly: Bool
    
    init(movementPattern: [Direction], friendly: Bool) {
        self.movementPattern = movementPattern
        self.friendly = friendly
    }
}
