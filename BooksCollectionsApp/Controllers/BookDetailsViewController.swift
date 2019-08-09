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
        if (rating == 5.0) {
            
            for i in 0..<ratingStars.count {
                ratingStars[i].image = UIImage(named: "StarFull")
            }
            
        } else if (rating >= 4.0) {
            
            for i in 0..<ratingStars.count - 1 {
                ratingStars[i].image = UIImage(named: "StarFull")
            }
            
            var fifthStarName = ""
            
            switch rating {
                case 4.0:
                    fifthStarName = "StarZero"
                case 4.1, 4.2:
                    fifthStarName = "StarOneTwo"
                case 4.3, 4.4:
                    fifthStarName = "StarThreeFour"
                case 4.5:
                    fifthStarName = "StarFive"
                case 4.6, 4.7:
                    fifthStarName = "StarSixSeven"
                case 4.8, 4.9:
                    fifthStarName = "StarEightNine"
                default:
                    break
            }
            
            fifthStar.image = UIImage(named: fifthStarName)
            
        
        } else if (rating >= 3.0) {
            for i in 0..<ratingStars.count - 2 {
                ratingStars[i].image = UIImage(named: "StarFull")
            }
            
            var fourthStarName = ""
            
            switch rating {
            case 3.0:
                fourthStarName = "StarZero"
            case 3.1, 3.2:
                fourthStarName = "StarOneTwo"
            case 3.3, 3.4:
                fourthStarName = "StarThreeFour"
            case 3.5:
                fourthStarName = "StarFive"
            case 3.6, 3.7:
                fourthStarName = "StarSixSeven"
            case 3.8, 3.9:
                fourthStarName = "StarEightNine"
            default:
                break
            }
            
            fourthStar.image = UIImage(named: fourthStarName)
            fifthStar.image = UIImage(named: "StarZero")
            

        } else if (rating >= 2.0) {
            for i in 0..<ratingStars.count - 3 {
                ratingStars[i].image = UIImage(named: "StarFull")
            }
            
            var thirdStarName = ""
            
            switch rating {
            case 2.0:
                thirdStarName = "StarZero"
            case 2.1, 2.2:
                thirdStarName = "StarOneTwo"
            case 2.3, 2.4:
                thirdStarName = "StarThreeFour"
            case 2.5:
                thirdStarName = "StarFive"
            case 2.6, 2.7:
                thirdStarName = "StarSixSeven"
            case 2.8, 2.9:
                thirdStarName = "StarEightNine"
            default:
                break
            }
            
            thirdStar.image = UIImage(named: thirdStarName)
            fourthStar.image = UIImage(named: "StarZero")
            fifthStar.image = UIImage(named: "StarZero")

  
        } else if (rating >= 1.0) {
            for i in 0..<ratingStars.count - 4 {
                ratingStars[i].image = UIImage(named: "StarFull")
            }
            
            var secondStarName = ""
            
            switch rating {
            case 1.0:
                secondStarName = "StarZero"
            case 1.1, 1.2:
                secondStarName = "StarOneTwo"
            case 1.3, 1.4:
                secondStarName = "StarThreeFour"
            case 1.5:
                secondStarName = "StarFive"
            case 1.6, 1.7:
                secondStarName = "StarSixSeven"
            case 1.8, 1.9:
                secondStarName = "StarEightNine"
            default:
                break
            }
            
            secondStar.image = UIImage(named: secondStarName)
            thirdStar.image = UIImage(named: "StarZero")
            fourthStar.image = UIImage(named: "StarZero")
            fifthStar.image = UIImage(named: "StarZero")
            
        } else {
            var firstStarName = ""
            
            switch rating {
            case 0.0:
                firstStarName = "StarZero"
            case 0.1, 0.2:
                firstStarName = "StarOneTwo"
            case 0.3, 0.4:
                firstStarName = "StarThreeFour"
            case 0.5:
                firstStarName = "StarFive"
            case 0.6, 0.7:
                firstStarName = "StarSixSeven"
            case 0.8, 0.9:
                firstStarName = "StarEightNine"
            default:
                break
            }
            
            firstStar.image = UIImage(named: firstStarName)
            secondStar.image = UIImage(named: "StarZero")
            thirdStar.image = UIImage(named: "StarZero")
            fourthStar.image = UIImage(named: "StarZero")
            fifthStar.image = UIImage(named: "StarZero")
            
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
