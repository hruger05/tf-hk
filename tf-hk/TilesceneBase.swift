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
    var available: [Troop] = []
    
    var inventory: SKSpriteNode?
    
    override func sceneDidLoad() {
        entityMap = childNode(withName: "PlayerMap") as! SKTileMapNode?
        environmentMap = childNode(withName: "GroundMap") as! SKTileMapNode?
        inventory = childNode(withName: "Inventory") as! SKSpriteNode?
    }
    
    public func setInventory() {
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
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
