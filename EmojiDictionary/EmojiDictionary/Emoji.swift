//
//  Emoji.swift
//  EmojiDictionary
//
//  Created by Goran Brlas on 30/09/2017.
//  Copyright © 2017 Goran Brlas. All rights reserved.
//

import Foundation

class Emoji: NSObject, NSCoding {
    var symbol: String
    var name: String
    var detailDescription: String
    var usage: String
    
    static let ArchiveURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!.appendingPathComponent("emojis")
    
    struct PropertyKeys {
        static let symbol = "symbol"
        static let name = "name"
        static let detailDescription = "detailDescription"
        static let usage = "usage"
    }
    
    init(symbol: String, name: String, description:String, usage: String) {
        self.symbol = symbol
        self.name = name
        self.detailDescription = description
        self.usage = usage
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        guard let symbol = aDecoder.decodeObject(forKey: PropertyKeys.symbol) as? String,
            let name = aDecoder.decodeObject(forKey: PropertyKeys.name) as? String,
            let detailDescription = aDecoder.decodeObject(forKey: PropertyKeys.detailDescription) as? String,
            let usage = aDecoder.decodeObject(forKey: PropertyKeys.usage) as? String
            else { return nil }
        
        self.init(symbol: symbol, name: name, description: detailDescription, usage: usage)
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(symbol, forKey: PropertyKeys.symbol)
        aCoder.encode(name, forKey: PropertyKeys.name)
        aCoder.encode(detailDescription, forKey: PropertyKeys.detailDescription)
        aCoder.encode(usage, forKey: PropertyKeys.usage)
    }
    
    static func saveToFile(emojis: [Emoji]) {
        NSKeyedArchiver.archiveRootObject(emojis, toFile: Emoji.ArchiveURL.path)
    }
    
    static func loadFromFile() -> [Emoji] {
        guard let emojis = NSKeyedUnarchiver.unarchiveObject(withFile: Emoji.ArchiveURL.path) as? [Emoji] else { return [] }
        
        return emojis
    }
    
    static func loadSampleEmojis() -> [Emoji] {
        return [
            Emoji(symbol: "😀", name: "Grinning Face", description: "A typical smiley face.", usage: "happiness"),
            Emoji(symbol: "😕", name: "Confused Face", description: "A confused, puzzled face.", usage: "unsure what to think; displeasure"),
            Emoji(symbol: "😍", name: "Heart Eyes", description: "A smiley face with hearts for eyes.", usage: "love of something; attractive"),
            Emoji(symbol: "👮", name: "Police Officer", description: "A police officer wearing a blue cap with a gold badge.", usage: "person of authority"),
            Emoji(symbol: "🐢", name: "Turtle", description: "A cute turtle.", usage: "Something slow"),
            Emoji(symbol: "🐘", name: "Elephant", description: "A gray elephant.", usage: "good memory"),
            Emoji(symbol: "🍝", name: "Spaghetti", description: "A plate of spaghetti.", usage: "spaghetti"),
            Emoji(symbol: "🎲", name: "Die", description: "A single die.", usage: "taking a risk, chance; game"),
            Emoji(symbol: "⛺️", name: "Tent", description: "A small tent.", usage: "camping"),
            Emoji(symbol: "📚", name: "Stack of Books", description: "Three colored books stacked on each other.", usage: "homework, studying"),
            Emoji(symbol: "💔", name: "Broken Heart", description: "A red, broken heart.", usage: "extreme sadness"),
            Emoji(symbol: "💤", name: "Snore", description: "Three blue \'z\'s.", usage: "tired, sleepiness"),
            Emoji(symbol: "🏁", name: "Checkered Flag", description: "A black-and-white checkered flag.", usage:"completion")
        ]
    }
}
