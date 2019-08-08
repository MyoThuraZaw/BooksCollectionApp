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
    
    var booklist: [Book] = []
    var selectedIndex: Int = 0
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
    
        setUpSize()
        
        let booklibrary = BookLibrary()
        booklist = booklibrary.books
        
        collectionView.backgroundColor = UIColor(red: 255/255, green: 235/255, blue: 235/255, alpha: 1)
    }
    
    func setUpSize() {
        itemWidth = (collectionView.frame.size.width - (horizontalGap * CGFloat(itemsPerRow - 1))) / CGFloat(itemsPerRow)
        
        itemHeight = (collectionView.frame.size.height - 20 - (verticalGap * 2)) / 3
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return booklist.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath)
        
//        let titleLabel = UILabel()
//        titleLabel.text = booklist[indexPath.item].Title
//        cell.addSubview(titleLabel)
//        setUpTitleConstraintsAndProperties(titleLabel, cell)
        
        var coverImage = UIImage()
        coverImage = booklist[indexPath.item].CoverImage
        let imageView = UIImageView(image: coverImage)
        imageView.contentMode = .scaleAspectFill
        cell.addSubview(imageView)
        
        setUpCoverImageConstrants(imageView, cell)
        
        return cell
    }
    
    func setUpCoverImageConstrants(_ imageView: UIImageView,_ cell: UICollectionViewCell) {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.topAnchor.constraint(equalTo: cell.topAnchor).isActive = true
        imageView.leadingAnchor.constraint(equalTo: cell.leadingAnchor).isActive = true
        imageView.trailingAnchor.constraint(equalTo: cell.trailingAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: cell.bottomAnchor).isActive = true
    }
    
//    func setUpTitleConstraintsAndProperties(_ titleLabel: UILabel,_ cell: UICollectionViewCell) {
//        titleLabel.translatesAutoresizingMaskIntoConstraints = false
//        titleLabel.topAnchor.constraint(equalTo: cell.topAnchor).isActive = true
//        titleLabel.leadingAnchor.constraint(equalTo: cell.leadingAnchor).isActive = true
//        titleLabel.trailingAnchor.constraint(equalTo: cell.trailingAnchor).isActive = true
//        titleLabel.bottomAnchor.constraint(equalTo: cell.bottomAnchor).isActive = true
//        titleLabel.textColor = .orange
//        titleLabel.textAlignment = .center
//        titleLabel.numberOfLines = 0
//    }
    
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

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        selectedIndex = indexPath.item
        performSegue(withIdentifier: "detailsegue", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is BookDetailsViewController {
            var vc = segue.destination as! BookDetailsViewController
            
            vc.selectedBook = booklist[selectedIndex]
        }
    }
}

