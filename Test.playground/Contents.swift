//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

struct Note: Codable {
    let title: String
    let text: String
    let timestamp: Date
}

let note1 = Note(title: "Note 1", text: "This is a sample note", timestamp: Date())
let note2 = Note(title: "Note 2", text: "This is another sample note", timestamp: Date())
let note3 = Note(title: "Note 3", text: "This is yet another sample note", timestamp: Date())
let notes = [note1, note2, note3]

let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
let archiveURL = documentsDirectory.appendingPathComponent("notes_test").appendingPathExtension("plist")

let encoder = PropertyListEncoder()
let encodedNotes = try? encoder.encode(notes)

print(encodedNotes)

try? encodedNotes?.write(to: archiveURL, options: .noFileProtection)

let decoder = PropertyListDecoder()
if let retrievedData = try? Data(contentsOf: archiveURL),
    let decodedNotes = try? decoder.decode(Array<Note>.self, from: retrievedData) {
    print(decodedNotes)
}
