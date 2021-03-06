//
//  ViewController.swift
//  Malert
//
//  Created by Vitor Mesquita on 10/31/2016.
//  Copyright (c) 2016 Vitor Mesquita. All rights reserved.
//

import UIKit
import Malert

class ViewController: UIViewController {
    
    var malertConfiguration = MalertViewConfiguration()
    var malertConfiguration2 = MalertViewConfiguration()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        malertConfiguration.backgroundColor = .brown
        malertConfiguration.buttonsAxis = .horizontal
        malertConfiguration.textAlign = .center
        malertConfiguration.textColor = .red
        
        malertConfiguration2.margin = 16
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func actionButton(_ sender: AnyObject) {
        let malertButtonConfig = MalertButtonConfig(title: "teste") {
            MalertManager.shared.dismiss()
        }
        
        let malertButtonConfig2 = MalertButtonConfig(title: "teste2") {
            MalertManager.shared.dismiss()
        }
        
        let malertButtonConfig3 = MalertButtonConfig(title: "teste3") {
            MalertManager.shared.dismiss()
        }
        
        MalertManager.shared.show(title: "titulo", customView: teste.instantiateFromNib(), buttons: [malertButtonConfig, malertButtonConfig2, malertButtonConfig3], animationType: .modalLeft)
        MalertManager.shared.show(customView: teste.instantiateFromNib(), buttons: [malertButtonConfig, malertButtonConfig2], animationType: .modalLeft)
        MalertManager.shared.show(title: "título customizado", customView: teste.instantiateFromNib(), buttons: [malertButtonConfig, malertButtonConfig3], animationType: .fadeIn, malertConfiguration: malertConfiguration)
        
    }
}
