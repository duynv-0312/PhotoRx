//
//  User.swift
//  WallPaperRx
//
//  Created by Duy Nguyễn on 29/05/2024.
//

import Foundation
import ObjectMapper

struct User {
    var id: Int
    var name: String
    var url: String
}

extension User {
    init?(map: Map) {
        self.init()
    }
    
    mutating func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        url <- map["url"]
    }
}

extension User: Mappable {
    init() {
        self.init(
            id: 0,
            name: "",
            url: ""
        )
    }
}
