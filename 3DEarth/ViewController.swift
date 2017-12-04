//
//  ViewController.swift
//  3DEarth
//
//  Created by Denny Mathew on 04/12/17.
//  Copyright © 2017 Denny Mathew. All rights reserved.
//

import UIKit
import SceneKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //SceneKit
        let scene = SCNScene()
        
        let cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
        cameraNode.position = SCNVector3(0, 0, 5)
        scene.rootNode.addChildNode(cameraNode)
        
        let lightNode = SCNNode()
        lightNode.light = SCNLight()
        lightNode.light?.type = .omni
        lightNode.position = SCNVector3(0, 0, 2)
        
        let stars = SCNParticleSystem(named: "StarParticles.scnp", inDirectory: nil)
        scene.rootNode.addParticleSystem(stars!)
        
        let earthNode = EarthNode()
        scene.rootNode.addChildNode(earthNode)
        
        let sceneView = self.view as! SCNView
        sceneView.scene = scene
        
        sceneView.showsStatistics = true
        sceneView.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        sceneView.allowsCameraControl = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //Hides Status Bar
    override var prefersStatusBarHidden: Bool {
        return true
    }


}

