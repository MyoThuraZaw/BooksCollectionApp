//
//  BookLibrary.swift
//  BooksCollectionsApp
//
//  Created by Myo Thura Zaw on 8/8/19.
//  Copyright © 2019 Myo Thura Zaw. All rights reserved.
//

import UIKit

class BookLibrary {
    var books = [Book]()
    
    init() {
        books.append(Book(title: "The Outsider", author: "Stephen King", price: 16.39, rating: 4.4))
        books.append(Book(title: "The Friend", author: "Sigrid Nunez", price: 18.05, rating: 4.0))
        books.append(Book(title: "New York 2140", author: "Kim Stanley Robinson", price: 14.23, rating: 4.5))
        books.append(Book(title: "The Mars Room", author: "Rachel Kushner", price: 18.47, rating: 3.5))
        books.append(Book(title: "Washington Black", author: "Esi Edugyan", price: 17.41, rating: 4.3))
        books.append(Book(title: "Life of Pi", author: "Yann Martel", price: 8.95, rating: 4.3))
        books.append(Book(title: "All the Light We Cannot See", author: "Anthony Doerr", price: 13.59, rating: 4.3))
        books.append(Book(title: "Blackout", author: "Candace Owens", price: 27.00, rating: 5.0))
        books.append(Book(title: "Dark Souls Trilogy Compendium", author: "Future Press", price: 29.99, rating: 4.2))
        books.append(Book(title: "Guts", author: "Raina Telgemeier", price: 9.09, rating: 5.0))
    }
}
