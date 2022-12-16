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

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBOutlet weak var photo: UITextView!
    
    
    @IBOutlet weak var height: UITextView!
    
    @IBOutlet weak var weight: UITextView!
    
    @IBOutlet weak var cal: UITextView!
    
    @IBAction func save(_ sender: UIButton) {
//        if self.height == nil
//        {
//            let buttonAlert = UIAlertController(title: "Alert !", message: "You didn't fill the form", preferredStyle: .alert)
//
//            //2. Add an action for the alert to pop up when Submit button pressed
//
//            buttonAlert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
//                NSLog("The \"OK\" alert occured.")
//            }))
//
//            self.present(buttonAlert, animated: true, completion: nil)
//        }
//        else
//        {
            performSegue(withIdentifier: "PSStoLS", sender: self)
        //}
    }
    
        
        
}
    

