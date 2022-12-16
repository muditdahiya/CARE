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
        print("hereerererere")
        print(p!.getEmail())
        print("hereerererere")
    }
    
    @IBOutlet weak var email: UITextView!

    @IBOutlet weak var password: UITextView!
    
    var p: Person?
    
    @IBAction func login(_ sender: UIButton) {
        if(email.text! == p?.getEmail() && password.text! == p?.getPassword()) {
            performSegue(withIdentifier: "LStoTBC", sender: self)
        } else {
            print(email.text)
            print(p?.getEmail())
            let alert = UIAlertController(title: "Email or password incorrect", message: "Please enter correct email and password", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
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
