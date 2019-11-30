//
//  SignUpViewController.swift
//  peazyPayiOS
//
//  Created by Elden Li on 4/20/19.
//  Copyright © 2019 Elden Li. All rights reserved.
//

import UIKit
import FirebaseAuth

class SignUpViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signupToLogin(_ sender: Any) {
        performSegue(withIdentifier: "signupToLogin", sender: self)
    }
    
    @IBAction func signup(_ sender: Any) {
        Auth.auth().createUser(withEmail: emailField.text!, password: passwordField.text!){ (user, error) in
            if error == nil {
                self.performSegue(withIdentifier: "signupToHome", sender: self)
            }
            else{
                let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                
                alertController.addAction(defaultAction)
                self.present(alertController, animated: true, completion: nil)
            }
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
