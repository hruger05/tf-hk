//
//  TilesceneBase.swift
//  tr-hk
//
//  Created by Milo Woodman on 12/19/24.
//

import SpriteKit
import SwiftUI

class TilesceneBase : SKScene {
    
}


#Preview {
    var scene: SKScene {
        let scene = TilesceneBase(fileNamed: "EmptyScene")
        return scene!
    }
    VStack {
        SpriteView(scene: scene)
    }
}
