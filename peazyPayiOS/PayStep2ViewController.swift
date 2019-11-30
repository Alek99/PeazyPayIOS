//
//  PayStep2ViewController.swift
//  peazyPayiOS
//
//  Created by Arman Vaziri on 4/25/19.
//  Copyright © 2019 Elden Li. All rights reserved.
//

import Foundation
import UIKit

class PayStep2ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func backButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "payStep2ToPayStep1", sender: self)
    }
    
    
}
