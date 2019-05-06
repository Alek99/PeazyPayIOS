//
//  DummyViewController.swift
//  peazyPayiOS
//
//  Created by Elden Li on 4/20/19.
//  Copyright © 2019 Elden Li. All rights reserved.
//

import UIKit
import FirebaseUI

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
        if (recentTransTableView.numberOfRows(inSection: 0) == 0) {
            recentTransTableView.separatorStyle = UITableViewCell.SeparatorStyle.none
            let emptyRecentTransactionLabel = UILabel(frame: CGRect(x: 100, y: 100, width: 50, height: 50))
            emptyRecentTransactionLabel.text = "No data to display!"
            emptyRecentTransactionLabel.textAlignment = .center
            emptyRecentTransactionLabel.textColor = UIColor.darkGray
            recentTransTableView.backgroundView = emptyRecentTransactionLabel
        }
    }
    
    @IBOutlet weak var recentTransTableView: UITableView!
    
    

    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) {
        
    }
    
    
    
    @IBAction func profileButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "homeToProfile", sender: self)
    }
    
    @IBAction func walletButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "homeToWallet", sender: self)
    }
    
    @IBAction func signout(_ sender: Any) {
        do {
            try Auth.auth().signOut()
        }
        catch let signOutError as NSError {
            print("Error signing out: %@", signOutError)
        }
        performSegue(withIdentifier: "signout", sender: self)
    }
}
