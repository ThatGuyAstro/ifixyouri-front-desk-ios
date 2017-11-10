//
//  LandingCollectionViewCell.swift
//  iFixYouri Front Desk
//
//  Created by Sam Elder on 11/9/17.
//  Copyright © 2017 Sam Elder. All rights reserved.
//

import UIKit

class LandingCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageBackground: UIImageView!

    @IBOutlet weak var labelOption: UILabel!
    
    func updateUI(label: String) {
        
        labelOption.text = label
        imageBackground.image = UIImage(named: "background.jpg")
        
        imageBackground.layer.borderWidth = 1
        imageBackground.layer.masksToBounds = false
        imageBackground.layer.cornerRadius = imageBackground.frame.height/2
        imageBackground.clipsToBounds = true
        
    }
    
}
