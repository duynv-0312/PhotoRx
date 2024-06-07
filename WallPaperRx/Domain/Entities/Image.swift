//
//  Image.swift
//  WallPaperRx
//
//  Created by Duy Nguyễn on 29/05/2024.
//

import Foundation
import ObjectMapper

struct Image {
    var id: Int
    var width: Int
    var height: Int
    var url: String
    var photographer: String
    var photographerUrl: String
    var photographerId: Int
    var avgColor: String
    var source: Source
    var liked: Bool
    var alt: String
}

extension Image {
    init?(map: Map) {
        self.init()
    }
    
    mutating func mapping(map: Map) {
        id <- map["id"]
        width <- map["width"]
        height <- map["height"]
        url <- map["url"]
        photographer <- map["photographer"]
        photographerUrl <- map["photographer_url"]
        photographerId <- map["photographer_id"]
        avgColor <- map["avg_color"]
        source <- map["src"]
        liked <- map["liked"]
        alt <- map["alt"]
    }
}

extension Image: Mappable {
    init() {
        self.init(
            id: 0,
            width: 0,
            height: 0,
            url: "",
            photographer: "",
            photographerUrl: "",
            photographerId: 0,
            avgColor: "",
            source: Source(),
            liked: false,
            alt: ""
        )
    }
}
