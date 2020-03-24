//
//  PogressBarInterfaceController.swift
//  ProgressCircleBar_Test_WatchOS WatchKit Extension
//
//  Created by Julia Santos on 24/03/20.
//  Copyright © 2020 Julia Santos. All rights reserved.
//
import WatchKit
import SpriteKit

class PogressBarInterfaceController: WKInterfaceController {
    
    @IBOutlet weak var interfaceScene: WKInterfaceSKScene!
    var scene = SKScene()
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        scene = SKScene(size: CGSize(width: 100, height: 100))
        scene.scaleMode = .aspectFit
        interfaceScene.presentScene(scene)
        
        addShapeNodeBackground()
        addShapeNode()
        
    }
    func addShapeNode(){
        //  Fraction represents the percentage of what is concluded for the Circular ProgressBar
        let fraction: CGFloat = .pi * 0.1
        let path = UIBezierPath.init(arcCenter: .zero, radius: 45, startAngle: .pi, endAngle: 2 * .pi * fraction, clockwise: false).cgPath
        
        let shapeNode = SKShapeNode(path: path)
        shapeNode.strokeColor = .cyan
        shapeNode.fillColor = .clear
        shapeNode.lineWidth = 6
        shapeNode.lineCap = .round
        shapeNode.position = CGPoint(x: scene.size.width / 2, y: scene.size.height / 2)
        scene.addChild(shapeNode)
    }
    
    func addShapeNodeBackground(){
        let path = UIBezierPath.init(arcCenter: .zero, radius: 45, startAngle: .pi, endAngle: 2 * .pi, clockwise: false).cgPath
        
        let shapeNode = SKShapeNode(path: path)
        shapeNode.strokeColor = .gray
        shapeNode.fillColor = .clear
        shapeNode.lineWidth = 6
        shapeNode.lineCap = .round
        shapeNode.position = CGPoint(x: scene.size.width / 2, y: scene.size.height / 2)
        scene.addChild(shapeNode)
    }
    
}
