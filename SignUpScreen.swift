//
//  ViewController.swift
//  CARE
//
//  Created by Mudit Dahiya on 2022-11-26.
//

import UIKit
import FirebaseDatabase

class SignUpScreen: UIViewController {
    var ref: DatabaseReference!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        ref = Database.database().reference();
    }

    

    @IBOutlet weak var name: UITextView!
    @IBOutlet weak var cal: UITextView!

    @IBAction func save(_ sender: UIButton) {
        
        
        self.ref.child("food").child("item1").setValue(["name": name])
        
    }
    
}

