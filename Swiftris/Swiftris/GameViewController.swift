//
//  GameViewController.swift
//  Swiftris
//
//  Created by Sean Shields on 8/6/15.
//  Copyright (c) 2015 Sean Shields. All rights reserved.
//

import UIKit
import SpriteKit


class GameViewController: UIViewController {
    
    var scene: GameScene!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let skView = view as! SKView
        skView.multipleTouchEnabled = false
        
        scene = GameScene(size: skView.bounds.size)
        scene.scaleMode = .AspectFill
        
        skView.presentScene(scene)

    }

    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}
