//
//  Book.swift
//  BooksCollectionsApp
//
//  Created by Myo Thura Zaw on 8/8/19.
//  Copyright © 2019 Myo Thura Zaw. All rights reserved.
//

import UIKit

class Book {
    private var _title: String
    var Title: String {
        return _title
    }
    
    private var _author: String
    var Author: String {
        return _author
    }
    
    private var _price: Float
    var Price: Float {
        return _price
    }
    
    private var _rating: Float
    var Rating: Float {
        return _rating
    }
    
    private var _coverImage: UIImage
    var CoverImage: UIImage {
        return _coverImage
    }
    
    init(title: String, author: String, price: Float, rating: Float, coverImage: UIImage) {
        _title = title
        _author = author
        _price = price
        _rating = rating
        _coverImage = coverImage
    }
}
