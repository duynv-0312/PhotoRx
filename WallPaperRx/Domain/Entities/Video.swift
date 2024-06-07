//
//  Video.swift
//  WallPaperRx
//
//  Created by Duy Nguyễn on 29/05/2024.
//

import Foundation
import ObjectMapper

struct Video {
    var id: Int
    var width: Int
    var height: Int
    var url: String
    var duration: Int
    var image: String
    var avgColor: String?
    var user: User
    var videoFiles: [DetailVideo]
    var videoPictures: [Picture]
}

extension Video {
    init?(map: Map) {
        self.init()
    }
    
    mutating func mapping(map: Map) {
        id <- map["id"]
        width <- map["width"]
        height <- map["height"]
        url <- map["url"]
        duration <- map["duration"]
        image <- map["image"]
        avgColor <- map["avg_color"]
        user <- map["user"]
        videoFiles <- map["video_files"]
        videoPictures <- map["video_pictures"]
    }
}

extension Video: Mappable {
    init() {
        self.init(
            id: 0,
            width: 0,
            height: 0,
            url: "",
            duration: 0,
            image: "",
            avgColor: "",
            user: User(),
            videoFiles: [DetailVideo](),
            videoPictures: [Picture]()
        )
    }
}
