//
//  APITarget.swift
//  WallPaperRx
//
//  Created by Duy Nguyễn on 29/05/2024.
//

import Foundation
import Moya

enum APITarget {
    case searchPhoto(name: String)
    case curatedPhoto
    case popularVideo
    case searchVideo(name: String)
    case pagePhoto(page: Int)
    case pageVideo(page: Int)
}

extension APITarget: TargetType {
    var baseURL: URL {
        let domain = APIUrls.shared.baseUrl
        guard let url = URL(string: domain) else {
            fatalError("Invalid base URL.")
        }
        return url
    }
    
    var path: String {
        switch self {
        case .searchPhoto:
            return "v1/search?query="
        case .curatedPhoto:
            return "v1/curated"
        case .popularVideo:
            return "videos/popular"
        case .searchVideo:
            return "v1/videos/search?query="
        case .pagePhoto:
            return "v1/search/"
        case .pageVideo:
            return "v1/videos/search/"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .searchPhoto, .curatedPhoto, .popularVideo, .searchVideo, .pagePhoto, .pageVideo:
            return .get
        }
    }
    
    var task: Moya.Task {
        switch self {
        case .searchPhoto(let name), .searchVideo(let name):
            return .requestParameters(parameters: ["query": name],
                                      encoding: URLEncoding.queryString)
        case .pagePhoto(let page), .pageVideo(let page):
            return .requestParameters(parameters: ["page": page],
                                      encoding: URLEncoding.queryString)
        default:
            return .requestPlain
        }
    }
    
    var headers: [String : String]? {
        switch self {
        case .searchPhoto, .curatedPhoto, .popularVideo, .searchVideo, .pagePhoto, .pageVideo:
            return [
                "Content-type": "application/json",
                "Accept": "application/json",
                "Authorization": APIUrls.shared.baseUrl
            ]
        }
    }
}

struct GetDataFromPlist {
    static func getStringValue(forKey key: String) -> String {
        return "Cc2m6hWwnFc1qktRHIx72yTu6rF5DjlRLhbgdf6QisKEDU4DUX5MiTjs"
    }
}
