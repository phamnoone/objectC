//
//  ViewController.swift
//  UICollectionView
//
//  Created by Thanh Pham on 12/4/15.
//  Copyright (c) 2015 Thanh Pham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collecttionView: UICollectionView!
    var listImage :[String]!
    override func viewDidLoad() {
        super.viewDidLoad()
        collecttionView.registerNib(UINib(nibName: "ViewCollectiomCellCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CustomCell")
        collecttionView.delegate = self
        collecttionView.dataSource = self
        
        listImage = ["audi","benley","fiat","honda","lambo","mercedes","rollroyce","toyota"]
    }

    
}


extension ViewController : UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout{
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listImage.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("CustomCell", forIndexPath:indexPath) as! ViewCollectiomCellCollectionViewCell
        
        cell.image.image = UIImage(named: (listImage[indexPath.row]+".jpg"))
        cell.label.text = listImage[indexPath.row]
        return cell
    }
    
   

    
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath){
        print("Check me")
    }
   
    
}