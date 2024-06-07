//
//  PhotoRequest.swift
//  WallPaperRx
//
//  Created by Duy Nguyễn on 29/05/2024.
//

import Foundation
import Alamofire

struct PhotoRequest {
    let page: Int
    let perPage: Int
    
    init(page: Int, perPage: Int = 15) {
        self.page = page
        self.perPage = perPage
    }
}
