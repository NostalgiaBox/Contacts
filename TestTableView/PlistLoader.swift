//
//  PlistLoader.swift
//  TestTableView
//
//  Created by Murray Fenstermaker on 11/26/19.
//  Copyright © 2019 Nostalgiabox. All rights reserved.
//

import Foundation

enum PlistError: Error {
    case invalidResource
    case parsingFailure
}

class PlistLoader {
    static func array(fromFile name: String, ofType type: String) throws -> [[String: String]] {
        guard let path = Bundle.main.path(forResource: name, ofType: type) else {
            throw PlistError.invalidResource
        }
        
        guard let array = NSArray(contentsOfFile: path) as? [[String: String]] else {
            throw PlistError.parsingFailure
        }
        
        return array
    }
}

class ContactsSource {
    static var contacts: [Contact]{
        let data = try! PlistLoader.array(fromFile: "ContactsDB", ofType: "plist")
        return data.flatMap { Contact(dictionary: $0) }
    }
    
}
