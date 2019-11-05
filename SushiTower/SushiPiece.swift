//
//  SushiPiece.swift
//  SushiTower
//
//  Created by Parrot on 2019-02-17.
//  Copyright © 2019 Parrot. All rights reserved.
//

import Foundation
import SpriteKit

// A custom SpriteNode class.
// Used to represent a piece of sushi in the tower.
class SushiPiece: SKSpriteNode {
    
    // MARK: Variables
    // --------------------------------
    
    
    var stickGraphic:SKSpriteNode!
    var positionOfStick:String = ""

    // MARK: Constructor - required nonsense
    // --------------------------------
    override init(texture: SKTexture?, color: UIColor, size: CGSize) {
        super.init(texture: texture, color: color, size: size)
        
        // @TODO Fix this so its alawys the same picture
        
        
        // 1. setup our chopstick images
        self.stickGraphic = SKSpriteNode(imageNamed: "chopstick")
        // 2. set the stick position
        // -------------------------
        // randomly generate the position of the stick
        let pos = Int.random(in: 0...2)
        if (pos == 0) {
            self.positionOfStick = ""
            
            
        }
        else if (pos == 1) {
            self.positionOfStick = "right"
            
            // right
            self.stickGraphic.position.x = self.position.x + 100
            self.stickGraphic.position.y = self.position.y - 10
            
            // Rotate img
            let facingRight = SKAction.scaleX(to: -1, duration: 0)
            self.stickGraphic.run(facingRight)
            
            // -------------------------
            // 3. show the stick on screen
            addChild(self.stickGraphic)
        }
        else if (pos == 2) {
            self.positionOfStick = "left"
            
            // left
            self.stickGraphic.position.x = self.position.x - 100
            self.stickGraphic.position.y = self.position.y - 10
            
            // -------------------------
            // 3. show the stick on screen
            addChild(self.stickGraphic)
        }
        
        
       
    }
    
    // Required nonsense
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // Mark:  Functions
    // --------------------------------
}
