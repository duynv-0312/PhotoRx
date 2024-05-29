//
//  TabbarItemType.swift
//  WallPaperRx
//
//  Created by Duy Nguyễn on 29/05/2024.
//

import Foundation
import UIKit

enum TabbarItemType {
    case photo
    case video
    case search
    case personal
    
    
    var item: UITabBarItem {
        switch self {
        case .photo:
            return UITabBarItem(title: "Photo",
                                image: UIImage(systemName: "photo"),
                                selectedImage: UIImage(systemName: "photo.fill"))
            
        case .video:
            return UITabBarItem(title: "Video",
                                image: UIImage(systemName: "video"),
                                selectedImage: UIImage(systemName: "video.fill"))
        case .search:
            return UITabBarItem(title: "Search",
                                image: UIImage(systemName: "magnifyingglass"),
                                selectedImage: UIImage(systemName: "magnifyingglass.fill"))
        case .personal:
            return UITabBarItem(title: "Personal",
                                image: UIImage(systemName: "person"),
                                selectedImage: UIImage(systemName: "person.fill"))
        }
    }
}
