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
    @IBOutlet weak var bookCover: UIImageView!
    
    @IBOutlet weak var firstStar: UIImageView!
    @IBOutlet weak var secondStar: UIImageView!
    @IBOutlet weak var thirdStar: UIImageView!
    @IBOutlet weak var fourthStar: UIImageView!
    @IBOutlet weak var fifthStar: UIImageView!
    
    var ratingStars = [UIImageView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = selectedBook.Title
        titleLabel.text = selectedBook.Title
        authorLabel.text = selectedBook.Author
        priceLabel.text = "$ \(String(selectedBook.Price))"
        bookCover.image = selectedBook.CoverImage
    
        view.backgroundColor = UIColor(red: 255/255, green: 225/255, blue: 173/255, alpha: 1)
        
        ratingStars.append(firstStar)
        ratingStars.append(secondStar)
        ratingStars.append(thirdStar)
        ratingStars.append(fourthStar)
        ratingStars.append(fifthStar)
        
        setUpRating(rating: selectedBook.Rating)
    }
    
    private func setUpRating(rating: Float) {
        let ratingFloor: Int = Int(floor(rating))
        
        for i in 0..<ratingFloor {
            ratingStars[i].image = UIImage(named: "StarFull")
        }
        
        var fractionStarName = ""
        let remainder = rating.truncatingRemainder(dividingBy: Float(ratingFloor))
        var roundedRemainder: Float = rating
        
        if (rating >= 1.0) {
            roundedRemainder = Float(round(remainder * 10) / 10)
        }
        
        switch roundedRemainder {
        case 0.0:
            fractionStarName = "StarZero"
        case 0.1, 0.2:
            fractionStarName = "StarOneTwo"
        case 0.3, 0.4:
            fractionStarName = "StarThreeFour"
        case 0.5:
            fractionStarName = "StarFive"
        case 0.6, 0.7:
            fractionStarName = "StarSixSeven"
        case 0.8, 0.9:
            fractionStarName = "StarEightNine"
        default:
            break
        }
        
        if (ratingFloor < ratingStars.count){
            ratingStars[ratingFloor].image = UIImage(named: fractionStarName)
            
            for i in 0..<(ratingStars.count - ratingFloor - 1) {
                ratingStars[ratingFloor + 1 + i].image = UIImage(named: "StarZero")
            }
        }
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
