//
//  MyCustomCell.swift
//  UICollectionView
//
//  Created by sok channy on 11/16/16.
//  Copyright © 2016 nini. All rights reserved.
//

import UIKit

class MyCustomCell: UICollectionViewCell {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    
    func fonfiguration(name:String, img: UIImage){
        label.text = name
        imgView.image = img
    }
}
