//
//  WalletViewController.swift
//  peazyPayiOS
//
//  Created by Arman Vaziri on 4/25/19.
//  Copyright © 2019 Elden Li. All rights reserved.
//

import Foundation
import UIKit

class WalletViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if (walletTableView.numberOfRows(inSection: 0) == 0) {
            walletTableView.separatorStyle = UITableViewCell.SeparatorStyle.none
            let emptyWalletLabel = UILabel(frame: CGRect(x: 100, y: 100, width: 50, height: 50))
            emptyWalletLabel.text = "There are no cards in your wallet"
            emptyWalletLabel.textAlignment = .center
            emptyWalletLabel.textColor = UIColor.darkGray
            walletTableView.backgroundView = emptyWalletLabel
        }
        
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var walletTableView: UITableView!
    
    @IBAction func backButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "walletToHome", sender: self)
    }
    
    
    
}
