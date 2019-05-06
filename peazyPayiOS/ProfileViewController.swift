//
//  profileViewController.swift
//  peazyPayiOS
//
//  Created by Arman Vaziri on 4/25/19.
//  Copyright © 2019 Elden Li. All rights reserved.
//

import Foundation
import UIKit

class ProfileViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func backButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "profileToHome", sender: self)
    }
    
    
}


