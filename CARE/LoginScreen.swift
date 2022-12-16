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
        print(p.getEmail())
        print("hereerererere")
    }
    
    @IBOutlet weak var email: UITextView!

    @IBOutlet weak var password: UITextView!
    
    var p: Person = Person()
    
    @IBAction func login(_ sender: UIButton) {
        performSegue(withIdentifier: "LStoTBC", sender: self)
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
