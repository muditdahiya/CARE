//
//  LoginScreen.swift
//  CARE
//
//  Created by Mudit Dahiya on 2022-12-02.
//

import UIKit

class LoginScreen: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var email: UITextView!

    @IBOutlet weak var password: UITextView!
    
    var p: Person?
    
    @IBAction func login(_ sender: UIButton) {
        if(email.text! == p?.getEmail() && password.text! == p?.getPassword()) {
            performSegue(withIdentifier: "LStoTBC", sender: self)
        } else {
            let alert = UIAlertController(title: "Email or password incorrect", message: "Please enter correct email and password", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is HomeScreen
        {
            let vc = segue.destination as? HomeScreen
            vc?.p = p
        }
        if segue.destination is TabBarController
        {
            let vc = segue.destination as? TabBarController
            vc?.p = p
        }
    }
     

}
