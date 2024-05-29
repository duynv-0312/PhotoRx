//
//  SearchNavigator.swift
//  WallPaperRx
//
//  Created by Duy Nguyễn on 29/05/2024.
//

import Foundation
import RxSwift
import RxCocoa

protocol SearchNavigatorType {
    
}

struct SearchNavigator: SearchNavigatorType {
    unowned let navigationController: UINavigationController
    
    
}
