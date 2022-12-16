//
//  TBCViewController.swift
//  CARE
//
//  Created by Mudit Dahiya on 2022-12-16.
//

import UIKit

class TBCViewController: UITabBarController {
    
    var p: Person?

    override func viewDidLoad() {
        super.viewDidLoad()
        performSegue(withIdentifier: "TBCtoNC", sender: Any?.self)

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

}
