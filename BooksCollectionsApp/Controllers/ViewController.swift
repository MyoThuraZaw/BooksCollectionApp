//
//  ViewController.swift
//  BooksCollectionsApp
//
//  Created by Myo Thura Zaw on 8/8/19.
//  Copyright © 2019 Myo Thura Zaw. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    var itemsPerRow: Int = 3
    var itemWidth: CGFloat = 0
    var itemHeight: CGFloat = 0
    var horizontalGap: CGFloat = 15
    var verticalGap:CGFloat = 15
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        setUpSize()
    }
    
    func setUpSize() {
        itemWidth = (collectionView.frame.size.width - (horizontalGap * CGFloat(itemsPerRow - 1))) / CGFloat(itemsPerRow)
        
        itemHeight = (collectionView.frame.size.height - 20 - (verticalGap * 2)) / 3
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 50
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath)
        
        cell.backgroundColor = .red
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = CGSize(width: itemWidth, height: itemHeight)
        return size
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return verticalGap
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return horizontalGap
    }

}

