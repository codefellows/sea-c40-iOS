//
//  CollectionViewController.swift
//  GuestlectureProject
//
//  Created by Adam Wallraff on 6/29/15.
//  Copyright (c) 2015 Adam Wallraff. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController, UICollectionViewDataSource {

  @IBOutlet var collectionView: UICollectionView!
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
      
      self.collectionView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
  
  
  func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as! MyCollectionViewCell
    
    cell.myLabel.text = "Cell #\(indexPath.row)"
    
    return cell
  }
  
  func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 20
  }

}
