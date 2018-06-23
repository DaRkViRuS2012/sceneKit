//
//  ViewController.swift
//  test ScenKit
//
//  Created by Nour  on 6/21/18.
//  Copyright © 2018 NourAraar. All rights reserved.
//

import UIKit
import SceneKit


class ViewController: UIViewController {

    @IBOutlet weak var sceneView: SCNView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        loadScene()
        
    }
    
    var scene:SCNScene?
    
    var node:SCNNode?
    
    var selectedColor:UIColor = .yellow
    func loadScene(){
        
        scene = SCNScene(named: "car.obj")!
        
         //scene.rootNode.childNode(withName: "Tee_S_tee", recursively: true)
     //   queenNode.scale = SCNVector3Make(100, 100, 100)
        
        
       
        
        sceneView.scene = scene
        
        sceneView.autoenablesDefaultLighting = true
        sceneView.allowsCameraControl = true
    }

 
    
    func changeColor(){
        node = scene?.rootNode.childNodes[0]
        let newMaterial2 = SCNMaterial()
        newMaterial2.diffuse.contents = selectedColor
        //node?.geometry?.firstMaterial?.diffuse.contents = selectedColor
        
        for mat in (node?.geometry?.materials)! {
            if mat.name == "Body"{
                mat.diffuse.contents = selectedColor
                
           }
            
        }
        
       // scene?.rootNode.addChildNode(node!)
        
    }

    @IBAction func changeColor(_ sender: UIButton) {
        selectedColor = sender.backgroundColor!
        changeColor()
    }
    
    
//    private func nodeForURL(url: NSURL) -> SCNNode
//    {
//        let asset = MDLAsset(URL: url)
//        let object = asset.objectAtIndex(0)
//        let node = SCNNode(MDLObject: object)
//
//        return node
//    }
}





