//
//  Picture.swift
//  WallPaperRx
//
//  Created by Duy Nguyễn on 29/05/2024.
//

import Foundation
import ObjectMapper

struct Picture {
    var id: Int
    var picture: String
}

extension Picture {
    init?(map: Map) {
        self.init()
    }
    
    mutating func mapping(map: Map) {
        id <- map["id"]
        picture <- map["picture"]
    }
}

extension Picture: Mappable {
    init() {
        self.init(
            id: 0,
            picture: ""
        )
    }
}
