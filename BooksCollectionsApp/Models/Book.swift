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
    private var _author: String
    private var _price: Float
    private var _rating: Float
    
    init(title: String, author: String, price: Float, rating: Float) {
        _title = title
        _author = author
        _price = price
        _rating = rating
    }
}
