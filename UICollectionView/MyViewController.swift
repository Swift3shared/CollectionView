//
//  MyViewController.swift
//  UICollectionView
//
//  Created by sok channy on 11/16/16.
//  Copyright © 2016 nini. All rights reserved.
//

import UIKit

class MyViewController: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource {
    @IBOutlet var myCollection: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.myCollection.dataSource = self
        self.myCollection.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return 12
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell", for: indexPath) as?MyCustomCell
        {
            return cell
        }
        else{
            return UICollectionViewCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView,
                                 viewForSupplementaryElementOfKind kind: String,
                                 at indexPath: IndexPath) -> UICollectionReusableView {
       
        print(kind)
        
        switch kind {
        case UICollectionElementKindSectionHeader:
            print("Section Header")
            let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "h1", for: indexPath)
            return headerView
        case UICollectionElementKindSectionFooter:
            print("Section Footer")
            let footerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "f1", for: indexPath)
            return footerView
            
        default:
            return UICollectionReusableView()
        }
        //return UICollectionReusableView()
    }
}
