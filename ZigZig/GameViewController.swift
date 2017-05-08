//
//  GameViewController.swift
//  ZigZig
//
//  Created by V F on 5/7/17.
//  Copyright © 2017 V F. All rights reserved.
//

import UIKit
import QuartzCore
import SceneKit

class GameViewController: UIViewController {

    let scene = SCNScene()
    let cameraNode = SCNNode()
    let firstBox = SCNNode()
    
    override func viewDidLoad() {
        self.createScene()

}
    func createScene(){
        let sceneView = self.view as! SCNView
        
        sceneView.scene = scene
        
        //create camera
        
        cameraNode.camera = SCNCamera ()
        cameraNode.position = SCNVector3Make (20, 20, 20)
        cameraNode.eulerAngles = SCNVector3Make (-45,45,0)
        scene.rootNode.addChildNode(cameraNode)
        
        //create box
        let firstBoxGeo = SCNBox(width: 1, height: 1.5, length: 1, chamferRadius: 0)
        firstBox.geometry = firstBoxGeo
        firstBox.position = SCNVector3Make(0, 0, 0)
        scene.rootNode.addChildNode(firstBox)
        
        //create light
        let light = SCNNode()
        light.light = SCNLight ()
        light.light?.type = SCNLight.LightType.directional
        light.eulerAngles = SCNVector3Make(-45, 0, 0)
        scene.rootNode.addChildNode(light)
        
        
    }
}
