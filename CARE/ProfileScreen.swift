//
//  profile.swift
//  CARE
//
//  Created by Jagtar Singh matharu on 2022-12-02.
//

//
//  ViewController.swift
//  CARE
//
//  Created by Mudit Dahiya on 2022-11-26.
//

import UIKit
import FirebaseDatabase

class ProfileScreen: UIViewController {
    var ref: DatabaseReference!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        ref = Database.database().reference();
        
        self.ref.child("food").child("item1").setValue(["name": "name"])
        
    
    }

    

  
        
    
}

