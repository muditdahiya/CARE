//
//  ProfileSetupScreen.swift
//  CARE
//
//  Created by Mudit Dahiya on 2022-12-02.
//

import UIKit

class ProfileSetupScreen: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var p: Person?
    
    @IBOutlet weak var height: UITextView!
    
    @IBOutlet weak var weight: UITextView!
    
    @IBOutlet weak var cal: UITextView!
    
    @IBAction func save(_ sender: UIButton) {
        if (height.text == nil)
        {
            let buttonAlert = UIAlertController(title: "Alert !", message: "You didn't fill the form", preferredStyle: .alert)

            buttonAlert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
                NSLog("The \"OK\" alert occured.")
            }))

            self.present(buttonAlert, animated: true, completion: nil)
        }
        else
        {
            p?.setHeight(height.text)
            p?.setWeight(weight.text)
            p?.setTargetCalories(Int(cal.text) ?? 2200)
            performSegue(withIdentifier: "PSStoLS", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is LoginScreen
        {
            let vc = segue.destination as? LoginScreen
            vc?.p = p
            
        }
    }
        
        
}
    

