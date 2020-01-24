//
//  Emoji.swift
//  EmojiDictionary
//
//  Created by ManhattanProject on 8/6/19.
//  Copyright © 2019 ManhattanProject. All rights reserved.
//

import Foundation

struct Emoji: Codable {
    var symbol: String
    var name: String
    var description: String
    var usage: String
    
    static let documentsDirectory =
        FileManager.default.urls(for: .documentDirectory,
        in: .userDomainMask).first!
    
    static let archiveURL = documentsDirectory.appendingPathComponent("emoji_test").appendingPathExtension("plist")
    
    static func saveToFile(emojis:[Emoji]) {
        let propertyListEncoder = PropertyListEncoder()
        let encodedEmojis = try? propertyListEncoder.encode(emojis)
        
        try? encodedEmojis?.write(to: archiveURL,
        options: .noFileProtection)
    }
    
    static func loadFromFile() -> [Emoji]? {
        let propertyListDecoder = PropertyListDecoder()
        if let retrievedEmojisData = try? Data(contentsOf: archiveURL),
        let decodedEmojis = try? propertyListDecoder.decode([Emoji].self,
        from: retrievedEmojisData) {
            return decodedEmojis
        }
        return [Emoji]()
}
    
    static func loadSampleEmojis() -> [Emoji] {
        return [Emoji]()
    }

}
    







