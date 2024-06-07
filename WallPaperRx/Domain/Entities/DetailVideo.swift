//
//  DetailVideo.swift
//  WallPaperRx
//
//  Created by Duy Nguyễn on 29/05/2024.
//

import Foundation
import ObjectMapper

struct DetailVideo {
    var id: Int
    var quality: String
    var fileType: String
    var width: Int
    var height: Int
    var fps: Double
    var link: String
}

extension DetailVideo {
    init?(map: Map) {
        self.init()
    }
    
    mutating func mapping(map: Map) {
        id <- map["id"]
        quality <- map["quality"]
        fileType <- map["file_type"]
        width <- map["width"]
        height <- map["height"]
        fps <- map["fps"]
        link <- map["link"]
    }
}

extension DetailVideo: Mappable {
    init() {
        self.init(
            id: 0,
            quality: "",
            fileType: "",
            width: 0,
            height: 0,
            fps: 0.0,
            link: ""
        )
    }
}
