//
//  DeployedUnit.swift
//  tf-hk
//
//  Created by Milo Woodman on 12/19/24.
//

import SpriteKit
import SwiftUI

class DeployedUnit {
    let troop: Troop
    
    var position: Position
    
    var entitiyMap: SKTileMapNode
    var terrainMap: SKTileMapNode
    
    init(troop: Troop, position: Position, entitiyMap: SKTileMapNode, terrainMap: SKTileMapNode) {
        self.troop = troop
        self.position = position
        self.entitiyMap = entitiyMap
        self.terrainMap = terrainMap
    }
    
    public func update() {
        entitiyMap.tileGroup(atColumn: position.x, row: position.y)
    }
}
