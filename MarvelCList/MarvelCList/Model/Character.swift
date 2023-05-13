//
//  Model.swift
//  MarvelCList
//
//  Created by Sara Felix on 12/05/23.
//

import UIKit

class Character: Codable {
    
    final class Thumbnail: Codable {
        let path: URL
        let thumbExtension: String
        
        private enum CodingKeys: String, CodingKey {
            case path
            case thumbExtension = "extension"
        }
        
        internal init(path: URL, thumbExtension: String) {
            self.path = path
            self.thumbExtension = thumbExtension
        }
    }
    
    let id: Int
    let name: String
    let description: String
    let thumbnail: Thumbnail
    let comicList: String
    
    private enum CodingKeys: String, CodingKey {
        case comicList = "comics"
        case id, name, description, thumbnail
    }
    
    init(id: Int, name: String, description: String, thumbnail: Thumbnail, comicList: String) {
        self.id = id
        self.name = name
        self.description = description
        self.thumbnail = thumbnail
        self.comicList = comicList
    }
    
}
