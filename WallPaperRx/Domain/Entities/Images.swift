//
//  Images.swift
//  WallPaperRx
//
//  Created by Duy Nguyễn on 29/05/2024.
//

import Foundation
import ObjectMapper

struct Images {
    var page: Int
    var perPage: Int
    var photos: [Image]
    var totalResults: Int
    var nextPage: String
}

extension Images {
    init?(map: Map) {
        self.init()
    }
    
    mutating func mapping(map: Map) {
        page <- map["page"]
        perPage <- map["per_page"]
        photos <- map["photos"]
        totalResults <- map["total_results"]
        nextPage <- map["next_page"]
    }
}

extension Images: Mappable {
    init() {
        self.init(
            page: 0,
            perPage: 0,
            photos: [Image](),
            totalResults: 0,
            nextPage: ""
        )
    }
}
