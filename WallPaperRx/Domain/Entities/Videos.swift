//
//  Videos.swift
//  WallPaperRx
//
//  Created by Duy Nguyễn on 29/05/2024.
//

import Foundation
import ObjectMapper

struct Videos {
    var page: Int
    var perPage: Int
    var totalResults: Int
    var url: String
    var videos: [Video]
    var nextPage: String
}

extension Videos {
    init?(map: Map) {
        self.init()
    }
    
    mutating func mapping(map: Map) {
        page <- map["page"]
        perPage <- map["per_page"]
        totalResults <- map["total_results"]
        url <- map["url"]
        videos <- map["videos"]
        nextPage <- map["next_page"]
    }
}

extension Videos: Mappable {
    init() {
        self.init(
            page: 0,
            perPage: 0,
            totalResults: 0,
            url: "",
            videos: [Video](),
            nextPage: ""
        )
    }
}
