//
//  Source.swift
//  WallPaperRx
//
//  Created by Duy Nguyễn on 29/05/2024.
//

import Foundation
import ObjectMapper

struct Source {
    var original: String
    var large2x: String
    var large: String
    var medium: String
    var small: String
    var portrait: String
    var landscape: String
    var tiny: String
}

extension Source {
    init?(map: Map) {
        self.init()
    }
    
    mutating func mapping(map: Map) {
        original <- map["original"]
        large2x <- map["large2x"]
        large <- map["large"]
        medium <- map["medium"]
        small <- map["small"]
        portrait <- map["portrait"]
        landscape <- map["landscape"]
        tiny <- map["tiny"]
    }
}

extension Source: Mappable {
    init() {
        self.init(
            original: "",
            large2x: "",
            large: "",
            medium: "",
            small: "",
            portrait: "",
            landscape: "",
            tiny: ""
        )
    }
}
