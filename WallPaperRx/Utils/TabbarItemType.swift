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
    var item: UITabBarItem {
        switch self {
        case .photo:
            return UITabBarItem(title: "Photo",
                                image: UIImage(systemName: "house.fill"),
                                selectedImage: UIImage(systemName: "house.fill"))
        }
    }
}
