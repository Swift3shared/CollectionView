//
//  CustomCollectionView.swift
//  UICollectionView
//
//  Created by sok channy on 11/18/16.
//  Copyright © 2016 nini. All rights reserved.
//

import UIKit

class CustomCollectionView: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    override func viewDidLoad() {
        
        let layout = self.collectionView?.collectionViewLayout as! UICollectionViewFlowLayout
        
            layout.scrollDirection = UICollectionViewScrollDirection.horizontal
        
        collectionView?.isPagingEnabled = true
        collectionView?.showsHorizontalScrollIndicator = false
        
        collectionView?.backgroundColor = UIColor.white
        
        collectionView?.register(UINib(nibName: "CustomCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CellId")
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellId", for: indexPath) as! CustomCollectionViewCell
        
        let label = cell.viewWithTag(1) as! UILabel
        
        label.text = "Item \(indexPath.row)"
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height-66)
    }
    
    override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
        
    }
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//        return CGFloat(0)
//    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return CGFloat(0)
    }
    

}
