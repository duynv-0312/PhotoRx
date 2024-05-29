//
//  VideoNavigator.swift
//  WallPaperRx
//
//  Created by Duy Nguyễn on 29/05/2024.
//

import Foundation
import RxSwift
import RxCocoa

protocol VideoNavigatorType {
    
}

struct VideoNavigator: VideoNavigatorType {
    unowned let navigationController: UINavigationController
    
    
}
