//
//  ViewController.swift
//  iFixYouri Front Desk
//
//  Created by Sam Elder on 11/9/17.
//  Copyright © 2017 Sam Elder. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    var options = ["Check in", "View device status", "Make a payment"]

    @IBOutlet weak var collectionViewLanding: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionViewLanding.delegate = self
        collectionViewLanding.dataSource = self
        
        initUi()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func initUi() {
        
        self.navigationController?.navigationBar.backgroundColor = ui.mainClor
        self.navigationController?.navigationBar.barTintColor = ui.mainClor
        self.navigationController?.navigationBar.tintColor = UIColor.white
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        if let cell = collectionViewLanding.dequeueReusableCell(withReuseIdentifier: "cellOption", for: indexPath) as? LandingCollectionViewCell {
            
            let myCell = options[indexPath.row]
            
            //cell.updateUI(_update: myCell)
            
            cell.updateUI(label: options[indexPath.row])
            
            
            
            return cell
            
        } else {
            
            return UICollectionViewCell()
            
        }
        
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
        
        var CellCount = options.count
        var CellWidth = 228
        var CellHeight = 228
        
        let totalCellWidth = CellWidth * CellCount
        let totalSpacingWidth = 20 * (CellCount - 1)
        
        let leftInset = (collectionViewLanding.frame.width - CGFloat(totalCellWidth + totalSpacingWidth)) / 2
        let rightInset = leftInset
        
        return UIEdgeInsetsMake(0, leftInset, 0, rightInset)
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return options.count
        
    }


}

