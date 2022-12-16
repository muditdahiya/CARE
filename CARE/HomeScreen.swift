//
//  HomeScreen.swift
//  CARE
//
//  Created by Mudit Dahiya on 2022-12-02.
//

import UIKit
import FirebaseDatabase


private let reuseIdentifier = "HomeCollectionViewCell"

class HomeScreen: UIViewController {
    
    var ref: DatabaseReference!
    

    
    @IBOutlet weak var CollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        CollectionView.dataSource=self;
       
        ref = Database.database().reference();

        
        
        ref.child("/").observe(.value) { snapshot in
                   if let datas = snapshot.children.allObjects as? [DataSnapshot] {
                       let results = datas.flatMap({
                         ($0.value as! [String: Any])["xxx"]
                       })
                       print(results)
                   }
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
extension HomeScreen: UICollectionViewDataSource
{
    
     func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
         print("hieo")
        return 1
    }


     func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
         print("hieswswweo")

        return 4
    }

      func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! HomeCollectionViewCell
          
          
        
        // Configure the cell

        //MARK: - Add UI element programmatically without an IBOutlet
      
       // cell.addSubview(imageView)
         
          
          
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

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
     override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }
     */
     func collectionView(_ collectionView:UICollectionView, performPrimaryActionForItemAt: IndexPath)
    {
//        performSegue(withIdentifier: "fromCollectionView", sender: nil)
        
    }

    
    
}
