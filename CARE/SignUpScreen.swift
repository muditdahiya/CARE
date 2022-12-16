//
//  ViewController.swift
//  CARE
//
//  Created by Mudit Dahiya on 2022-11-26.
//

import UIKit
//import FirebaseDatabase

class SignUpScreen: UIViewController {
  //  var ref: DatabaseReference!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //ref = Database.database().reference();
    }
    
    var p: Person = Person()


//    @IBAction func save(_ sender: UIButton) {
//
//
////        self.ref.child("food").child("item1").setValue(["name": name])
////
//    }
    
    
    
    @IBOutlet weak var name: UITextView!
    
    @IBOutlet weak var email: UITextView!
    
    @IBOutlet weak var dob: UITextView!
    
    @IBOutlet weak var password: UITextView!
    
    
    
    @IBAction func signUp(_ sender: UIButton) {
        
        if self.name.text == ""
        {
            let buttonAlert = UIAlertController(title: "Alert !", message: "You didn't fill the form", preferredStyle: .alert)
            
            //2. Add an action for the alert to pop up when Submit button pressed
            
            buttonAlert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
                NSLog("The \"OK\" alert occured.")
            }))
            
            self.present(buttonAlert, animated: true, completion: nil)
        }
        else
        {
            p.setName(name.text)
            p.setDOB(dob.text)
            p.setEmail(email.text)
            p.setPassword(password.text)
            print(p.getEmail())
            performSegue(withIdentifier: "SUStoPSS", sender: self)
        }
    }
    
    
    @IBAction func login(_ sender: UIButton) {
        p.setEmail(email.text)
        performSegue(withIdentifier: "SUStoLS", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is ProfileSetupScreen
        {
            let vc = segue.destination as? ProfileSetupScreen
            vc?.p = p
        }
        if segue.destination is LoginScreen
        {
            let vc = segue.destination as? LoginScreen
            vc?.p = p
            
        }
    }
    
    
}

