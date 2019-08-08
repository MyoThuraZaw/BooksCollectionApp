//
//  BookDetailsViewController.swift
//  BooksCollectionsApp
//
//  Created by Myo Thura Zaw on 8/8/19.
//  Copyright © 2019 Myo Thura Zaw. All rights reserved.
//

import UIKit

class BookDetailsViewController: UIViewController {

    var selectedBook: Book!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var bookCover: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = selectedBook.Title
        titleLabel.text = selectedBook.Title
        authorLabel.text = selectedBook.Author
        priceLabel.text = "$ \(String(selectedBook.Price))"
        ratingLabel.text = "Rating: \(String(selectedBook.Rating))"
        bookCover.image = selectedBook.CoverImage
    
        view.backgroundColor = UIColor(red: 255/255, green: 225/255, blue: 173/255, alpha: 1)
        
        
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
