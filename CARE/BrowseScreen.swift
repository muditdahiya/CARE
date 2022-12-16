//
//  BrowseScreen.swift
//  CARE
//
//  Created by Mudit Dahiya on 2022-12-02.
//

import UIKit

private let reuseIdentifier = "BrowseCollectionViewCell"


class BrowseScreen: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}

extension BrowseScreen: UICollectionViewDataSource
{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! HomeCollectionViewCell
        var imageView = UIImageView(image: UIImage(named: "CardBackground"))
        cell.addSubview(imageView)
        
        //MARK: - Add a constraint programmatically
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        //Set the x,y (position)
        imageView.centerXAnchor.constraint(equalTo: cell.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: cell.centerYAnchor).isActive = true
        
        //Set the width and height
        imageView.widthAnchor.constraint(equalTo: cell.widthAnchor, multiplier: 1.0).isActive = true
        imageView.heightAnchor.constraint(equalTo: cell.heightAnchor, multiplier: 1.0).isActive = true
        
        imageView.layer.zPosition = -1
        
        cell.foodName.text="asas";
        cell.foodCal.text="asas";
        cell.foodType.text="Asasa";
        cell.foodProtienType.text="Asas";
        
        return cell
    }
    
    func collectionView(_ collectionView:UICollectionView, performPrimaryActionForItemAt: IndexPath)
    {
        //        performSegue(withIdentifier: "fromCollectionView", sender: nil)
        
    }
}
