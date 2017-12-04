//
//  EarthNode.swift
//  3DEarth
//
//  Created by Denny Mathew on 04/12/17.
//  Copyright © 2017 Denny Mathew. All rights reserved.
//

import SceneKit

class EarthNode: SCNNode {

    override init() {
        super.init()
        
        self.geometry = SCNSphere(radius: 1)
        self.geometry?.firstMaterial?.diffuse.contents = UIImage(named: "Diffuse")
        self.geometry?.firstMaterial?.specular.contents = UIImage(named: "Specular")
        self.geometry?.firstMaterial?.emission.contents = UIImage(named: "Emission")
        self.geometry?.firstMaterial?.normal.contents = UIImage(named: "Normal")
        
        self.geometry?.firstMaterial?.shininess = 50
        
        let action = SCNAction.rotate(by: 360 * CGFloat(Double.pi / 180), around: SCNVector3(0, 1, 0), duration: 50)
        let repeatAction = SCNAction.repeatForever(action)
        self.runAction(repeatAction)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
