//
//  TitleScreen.swift
//  tr-hk
//
//  Created by Milo Woodman on 12/19/24.
//

import SwiftUI
import SpriteKit

// https://www.hackingwithswift.com/quick-start/swiftui/how-to-integrate-spritekit-using-spriteview
class  TitleScreen : SKScene {
    
}

#Preview {
    var scene: SKScene {
        let scene = TitleScreen(fileNamed: "TitleScreen")
        return scene!
    }
    VStack {
        SpriteView(
            scene: scene
        )
    }
}
