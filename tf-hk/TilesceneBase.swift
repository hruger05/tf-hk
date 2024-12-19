//
//  TilesceneBase.swift
//  tr-hk
//
//  Created by Milo Woodman on 12/19/24.
//

import SpriteKit
import SwiftUI

class TilesceneBase : SKScene {
    var entityMap: SKTileMapNode?
    var deployed: [DeployedUnit] = []
    
    var environmentMap: SKTileMapNode?
    var inventory: [SKSpriteNode] = []
    
    var selectionIdx = -1
    
    override func sceneDidLoad() {
        entityMap = childNode(withName: "PlayerMap") as! SKTileMapNode?
        environmentMap = childNode(withName: "GroundMap") as! SKTileMapNode?
        
        for i in 0..<4 {
            inventory.append(childNode(withName: "Troop\(i)") as! SKSpriteNode)
        }
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else { return }
        
        let location = touch.location(in: self)
        
        for i in 0..<4 {
            if (inventory[i].contains(location)) {
                selectionIdx = i
                return
            }
        }
        
        guard entityMap != nil else {
            return
        }
        
        if entityMap!.contains(location) {
            let x = entityMap!.tileColumnIndex(fromPosition: location)
            let y = entityMap!.tileRowIndex(fromPosition: location)
            
            if let tile = entityMap!.tileDefinition(atColumn: x, row: y) {
                
            }
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else { return }
        
        let location = touch.location(in: self)
        
    }
}


#Preview {
    VStack {
        var scene: SKScene {
            let scene = TilesceneBase(fileNamed: "EmptyScene")
            scene!.size = CGSize(width: 1334, height: 820)
            scene!.scaleMode = .aspectFit
            return scene!
        }
        SpriteView(scene: scene)
    }
}
