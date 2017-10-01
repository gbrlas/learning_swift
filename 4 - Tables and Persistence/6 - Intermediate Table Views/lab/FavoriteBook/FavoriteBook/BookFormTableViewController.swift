//
//  BookFormTableViewController.swift
//  FavoriteBooks
//
//  Created by Goran Brlas on 30/09/2017.
//

import UIKit

class BookFormTableViewController: UITableViewController {

    struct PropertyKeys {
        static let unwind = "UnwindToBookTable"
    }
    
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var authorField: UITextField!
    @IBOutlet weak var genreField: UITextField!
    @IBOutlet weak var lengthField: UITextField!
    
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let title = titleField.text,
            let author = authorField.text,
            let genre = genreField.text,
            let length = lengthField.text else {return}
        
        book = Book(title: title, author: author, genre: genre, length: length)
        performSegue(withIdentifier: PropertyKeys.unwind, sender: self)
    }
    
    var book: Book?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
    }

    func updateView() {
        guard let book = book else {return}
        
        titleField.text = book.title
        authorField.text = book.author
        genreField.text = book.genre
        lengthField.text = book.length
    }

}
